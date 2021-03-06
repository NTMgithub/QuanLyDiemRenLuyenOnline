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
$checkQuyen = new checkQuyen();


//get domain dùng cho link file
if(isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on') $url = "https://";   
else $url = "http://";   
        
$url .= $_SERVER['HTTP_HOST'];


// kiểm tra đăng nhập thành công 
if ($data["status"] == 1) {
    //if ($checkQuyen->checkQuyen_CVHT_Khoa_CTSV($data["user_data"]->aud)) {
        $database = new Database();
        $db = $database->getConnection();
        
        $urlFile = $url.dirname($_SERVER['PHP_SELF'])."/upload/";

        if (isset($_GET['maChamDiemRenLuyen']) ){
            $item->maChamDiemRenLuyen  = isset($_GET['maChamDiemRenLuyen']) ? $_GET['maChamDiemRenLuyen'] : die(); //Lấy id từ phương thức GET

            $item = new ChamDiemRenLuyen($db);
            $item->getSingleChamDiemRenLuyen();
            if ($item->maPhieuRenLuyen != null) {

                if ($fileMinhChung != null){

                    if ($item->maTieuChi3 != 0){
                        // create array
                        $chamdiemrenluyen_arr = array(
                            "maChamDiemRenLuyen" =>  $item->maChamDiemRenLuyen,
                            "maPhieuRenLuyen" =>  $item->maPhieuRenLuyen,
                            "maTieuChi3" => $item->maTieuChi3,
                            "maTieuChi2" => $item->maTieuChi2,
                            "maSinhVien" => $item->maSinhVien,
                            "diemSinhVienDanhGia" => $item->diemSinhVienDanhGia,
                            "diemLopDanhGia" => $item->diemLopDanhGia,
                            "diemKhoaDanhGia" => $item->diemKhoaDanhGia,
                            "fileMinhChung" =>  $urlFile.$item->maPhieuRenLuyen.'/tieuchi3_'.$item->maTieuChi3.'/'.$item->fileMinhChung,
                            "ghiChu" => $item->ghiChu

                        );
                    }

                    if ($item->maTieuChi2 != 0){
                        // create array
                        $chamdiemrenluyen_arr = array(
                            "maChamDiemRenLuyen" =>  $item->maChamDiemRenLuyen,
                            "maPhieuRenLuyen" =>  $item->maPhieuRenLuyen,
                            "maTieuChi3" => $item->maTieuChi3,
                            "maTieuChi2" => $item->maTieuChi2,
                            "maSinhVien" => $item->maSinhVien,
                            "diemSinhVienDanhGia" => $item->diemSinhVienDanhGia,
                            "diemLopDanhGia" => $item->diemLopDanhGia,
                            "diemKhoaDanhGia" => $item->diemKhoaDanhGia,
                            "fileMinhChung" =>  $urlFile.$item->maPhieuRenLuyen.'/tieuchi2_'.$item->maTieuChi2.'/'.$item->fileMinhChung,
                            "ghiChu" => $item->ghiChu

                        );
                    }
                    
                }else{
                    // create array
                    $chamdiemrenluyen_arr = array(
                        "maChamDiemRenLuyen" =>  $item->maChamDiemRenLuyen,
                        "maPhieuRenLuyen" =>  $item->maPhieuRenLuyen,
                        "maTieuChi3" => $item->maTieuChi3,
                        "maTieuChi2" => $item->maTieuChi2,
                        "maSinhVien" => $item->maSinhVien,
                        "diemSinhVienDanhGia" => $item->diemSinhVienDanhGia,
                        "diemLopDanhGia" => $item->diemLopDanhGia,
                        "diemKhoaDanhGia" => $item->diemKhoaDanhGia,
                        "fileMinhChung" => $item->fileMinhChung,
                        "ghiChu" => $item->ghiChu

                    );
                }
                
    
                http_response_code(200);
                echo json_encode($chamdiemrenluyen_arr);
            } else {
                http_response_code(404);
                echo json_encode("chamdiemrenluyen không tìm thấy.");
            }

        }
       

    // } else {
    //     http_response_code(403);
    //     echo json_encode(
    //         array("message" => "Bạn không có quyền thực hiện điều này!")
    //     );
    // }
} else {
    http_response_code(403);
    echo json_encode(
        array("message" => "Vui lòng đăng nhập trước!")
    );
}




?>