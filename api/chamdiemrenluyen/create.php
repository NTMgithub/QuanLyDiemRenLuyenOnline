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

$item = new ChamDiemRenLuyen($db); //new HoatDongDanhGia object
$data = json_decode(file_get_contents("php://input")); //lấy request data từ user 

if ($data != null) {
    //set các biến bằng data nhận từ user
    $item->maTieuChi3 = $data->maTieuChi3;
    $item->maTieuChi2 = $data->maTieuChi2;
    $item->maSinhVien = $data->maSinhVien;
    $item->diemSinhVienDanhGia = $data->diemSinhVienDanhGia;
    $item->diemLopDanhGia = $data->diemLopDanhGia;



    if ($item->createChamDiemRenLuyen()) {
        echo 'chamdiemrenluyen created successfully.';
    } else {
        echo 'chamdiemrenluyen could not be created.';
    }
} else {
    echo 'No data posted.';
}
