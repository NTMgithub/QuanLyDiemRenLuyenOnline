<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

include_once '../../config/database.php';
include_once '../../class/chamdiemrenluyen.php';
include_once '../auth/read-data.php';
include_once '../auth/check_quyen.php';


$read_data = new read_data();
$data = $read_data->read_token();

// kiểm tra đăng nhập thành công 
if ($data["status"] == 1) {
    if ($checkQuyen->checkQuyen_CTSV($data["user_data"]->aud)) {
    } else {
        http_response_code(403);
        echo json_encode(
            array("message" => "Bạn không có quyền thực hiện điều này!")
        );
    }
} else {
    http_response_code(403);
    echo json_encode(
        array("message" => "Vui lòng đăng nhập trước!")
    );
}

$database = new Database();
$db = $database->getConnection();
$item = new ChamDiemRenLuyen($db);
$item->maChamDiemRenLuyen  = isset($_GET['maChamDiemRenLuyen ']) ? $_GET['maChamDiemRenLuyen '] : die(); //Lấy id từ phương thức GET

$item->getSingleChamDiemRenLuyen();
if ($item->maTieuChi3 != null) {
    // create array
    $chamdiemrenluyen_arr = array(
        "maChamDiemRenLuyen" =>  $item->maChamDiemRenLuyen,
        "maTieuChi2" => $maTieuChi2,
        "maTieuChi3" => $item->maTieuChi3,
        "maSinhVien" => $item->maSinhVien,
        "diemSinhVienDanhGia" => $item->diemSinhVienDanhGia,
        "diemLopDanhGia" => $item->diemLopDanhGia
       
    );

    http_response_code(200);
    echo json_encode($chamdiemrenluyen_arr);
} else {
    http_response_code(404);
    echo json_encode("chamdiemrenluyen not found.");
}
