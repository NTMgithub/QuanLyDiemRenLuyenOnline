<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

    include_once '../../config/database.php';
    include_once '../../class/phieurenluyen.php';
    include_once '../auth/read-data.php';
    
    $read_data = new read_data();
    $data=$read_data->read_token();
    
    // kiểm tra đăng nhập thành công 
    if($data["status"]==1){
    

        $database = new Database();
        $db = $database->getConnection();

        $item = new PhieuRenLuyen($db); //new Khoa object
        $data = json_decode(file_get_contents("php://input")); //lấy request data từ user 

        if ($data != null){
            //set các biến bằng data nhận từ user
            $item->xepLoai = $data->xepLoai;
            $item->diemTongCong = $data->diemTongCong;
            $item->maSinhVien = $data->maSinhVien;
            $item->maHocKyDanhGia = $data->maHocKyDanhGia;

            if($item->createPhieuRenLuyen()){
                echo 'phieurenluyen created successfully.';
            } else{
                echo 'phieurenluyen could not be created.';
            }
        }else{
            echo 'No data posted.';
        }
    }   

?>