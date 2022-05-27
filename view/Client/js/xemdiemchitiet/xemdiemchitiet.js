function getCookie(cName) {
    const name = cName + "=";
    const cDecoded = decodeURIComponent(document.cookie); //to be careful
    const cArr = cDecoded.split("; ");
    let res;
    cArr.forEach((val) => {
        if (val.indexOf(name) === 0) res = val.substring(name.length);
    });
    return res;
}

function thongBaoLoi(message){
  Swal.fire({
    icon: "error",
    title: "Lỗi",
    text: message,
    //timer: 5000,
    timerProgressBar: true,
  });
}

function changeNumberHandle(val, number)
{
  if (number < 0){
    number = 0;
  }
  
  if (Number(val.value) > number)
  {
    val.value = number
  }
}


var jwtCookie = getCookie("jwt");

var url = new URL(window.location.href);
var GET_MaHocKy = url.searchParams.get("maHocKy");

var GET_MaSinhVien = url.searchParams.get("maSinhVien");


//-----------------------------------------//
function HienThiThongTinVaDanhGia() {
    var checkMaHocKyHopLe = 0;  

    if (GET_MaHocKy != null){
      if (GET_MaHocKy.trim() != ''){
        
        $.ajax({
          url: "../../../api/thongbaodanhgia/read.php",
          async: false,
          type: "GET",
          contentType: "application/json;charset=utf-8",
          dataType: "json",
          headers: {
            Authorization: jwtCookie,
          },
          success: function (result_ThongBaoDanhGia) {
            
            $.each(result_ThongBaoDanhGia, function (index_TBDG) {
              for (var q = 0;q < result_ThongBaoDanhGia[index_TBDG].length;q++) {
                var maHocKy_TBDG = result_ThongBaoDanhGia[index_TBDG][q].maHocKyDanhGia;
  
                if (GET_MaHocKy === maHocKy_TBDG){
                  checkMaHocKyHopLe++;

                     
                  getThongTinNguoiDung();
                  getTieuChiDanhGia();
                      
                }
  
              }


              if (checkMaHocKyHopLe == 0){
                window.location.href = 'tracuudiemrenluyen.php';
              }
              
            });


          },
          error: function (errorMessage_tc3) {
            thongBaoLoi(errorMessage_tc3.responseText);
          },
        });
      }else{
        window.location.href = 'tracuudiemrenluyen.php';
      }


    }else{
     
      window.location.href = 'tracuudiemrenluyen.php';
    }
}



//------------------------------------------------//
//Show tiêu chí đánh giá
function getTieuChiDanhGia() {
    //Ajax tieuchicap1
    $.ajax({
        url: "../../../api/tieuchicap1/read.php",
        async: false,
        type: "GET",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        headers: {
        Authorization: jwtCookie,
        },
        success: function (result) {
         
            $.each(result, function (index) {
            for (var i = 0; i < result[index].length; i++) {
            //console.log(result[index][i].noidung);

                $("#tbody_noiDungDanhGia").append("<tr>\
                <td style='font-weight: bold;'>" +result[index][i].noidung + "</td>\
                <td></td>\
                <td></td>\
                <td></td>\
                <td></td>\
                </tr>");

            //Ajax tieuchicap2
            $.ajax({
                url: "../../../api/tieuchicap2/read.php",
                async: false,
                type: "GET",
                contentType: "application/json;charset=utf-8",
                dataType: "json",
                headers: {
                Authorization: jwtCookie,
                },
                success: function (result_tc2) {
                    $.each(result_tc2, function (index_tc2) {
                        for (var k = 0; k < result_tc2[index_tc2].length; k++) {
                            if (result[index][i].matc1 === result_tc2[index_tc2][k].matc1) {
                            
                                if (result_tc2[index_tc2][k].diemtoida != 0) {
                                    $("#tbody_noiDungDanhGia").append("<tr>\
                                        <td><em>" + result_tc2[index_tc2][k].noidung +"</em></td>\
                                        <td><em>" +result_tc2[index_tc2][k].diemtoida +"đ</em></td>\
                                        <td><input type='number' style='width: 100px;' onchange='changeNumberHandle(this,"+ result_tc2[index_tc2][k].diemtoida +")' id='TC2_" + result_tc2[index_tc2][k].matc2 +"' disabled/></td>\
                                        <td><input type='number' style='width: 100px;' onchange='changeNumberHandle(this,"+ result_tc2[index_tc2][k].diemtoida +")' id='CVHT_TC2_" + result_tc2[index_tc2][k].matc2 +"' disabled/></td>\
                                        <td></td>\
                                    </tr>");

                                    // <td><input type='text' style='width: 100px;'  id='ghiChuTC2_" + result_tc2[index_tc2][k].matc2 +"' /></td>\
                                    
                                } else {
                                    if (result_tc2[index_tc2][k].noidung == "1.Kết quả học tập: ") {
                                        $("#tbody_noiDungDanhGia").append("<tr>\
                                            <td><em>" + result_tc2[index_tc2][k].noidung +"<br>Điểm TBC học kỳ trước: <input type='text' id='inputTBCHocKyTruoc' name='diemTrungBinhChungHKTruoc' style='width: 100px;margin-right: 30px' disabled/>Điểm TBC học kỳ đang xét: <input type='text' id='inputTBCHocKyDangXet' name='diemTrungBinhChungHKXet' style='width: 100px;' disabled/> </em></td>\
                                            <td></td>\
                                            <td></td>\
                                            <td></td>\
                                            <td></td>\
                                            </tr>"
                                    );
                                    } else {
                                        $("#tbody_noiDungDanhGia").append("<tr>\
                                            <td><em>" + result_tc2[index_tc2][k].noidung +"</em></td>\
                                            <td></td>\
                                            <td></td>\
                                            <td></td>\
                                            <td></td>\
                                            </tr>"
                                        );
                                    }
                                }

                                //Ajax tieuchicap3
                                $.ajax({
                                    url: "../../../api/tieuchicap3/read.php",
                                    async: false,
                                    type: "GET",
                                    contentType: "application/json;charset=utf-8",
                                    dataType: "json",
                                    headers: {
                                        Authorization: jwtCookie,
                                    },
                                    success: function (result_tc3) {
                                        $.each(result_tc3, function (index_tc3) {
                                        for (var p = 0;p < result_tc3[index_tc3].length;p++) {
                                            if (result_tc2[index_tc2][k].matc2 ===result_tc3[index_tc3][p].matc2) {
                                            // console.log(result_tc3[index_tc3][p].noidung);

                                            $("#tbody_noiDungDanhGia").append("<tr>\
                                                <td>" +result_tc3[index_tc3][p].noidung +"</span></td>\
                                                <td><em>" + result_tc3[index_tc3][p].diem + "đ</em></td>\
                                                <td><input type='number' style='width: 100px;' onchange='changeNumberHandle(this,"+ result_tc3[index_tc3][p].diem +")' id='TC3_" + result_tc3[index_tc3][p].matc3 + "' disabled /></td>\
                                                <td><input type='number' style='width: 100px;' onchange='changeNumberHandle(this,"+ result_tc3[index_tc3][p].diem +")' id='CVHT_TC3_" + result_tc3[index_tc3][p].matc3 + "' disabled/></td>\
                                                <td></td>\
                                                </tr>");
                                            }

                                            // <td><input type='text' style='width: 100px;'  id='ghiChuTC3_" + result_tc3[index_tc3][p].matc3 + "' /></td>\
                                        }
                                        });
                                    },
                                    error: function (errorMessage_tc3) {
                                      thongBaoLoi(errorMessage_tc3.responseText);
                                    },
                                });
                            }
                        }
                    });
                },
                error: function (errorMessage_tc2) {
                    thongBaoLoi(errorMessage_tc2.responseText);
                },
            });

            $("#tbody_noiDungDanhGia").append(
                "<tr style='background: darkseagreen;' >\
                <td style='font-weight: bold;' ><span>Cộng: </span>\
                </td>\
                <td><em></em></td>\
                <td><input type='number' style='width: 100px' onchange='changeNumberHandle(this,"+ result[index][i].diemtoida +")' id='TongCong_TC1_" + result[index][i].matc1 +"' disabled/></td>\
                <td><input type='number' style='width: 100px' onchange='changeNumberHandle(this,"+ result[index][i].diemtoida +")' id='CVHT_TongCong_TC1_" + result[index][i].matc1 +"' disabled/></td>\
                </tr>"
            );
            }

           
            });
        },
        error: function (errorMessage) {
            thongBaoLoi(errorMessage.responseText);
        },
    });

    $("#tbody_noiDungDanhGia").append(
        "<tr>\
            <td style='font-weight: bold;' >ĐIỂM TỔNG CỘNG (tối đa không quá 100 điểm): </span>\
            </td>\
            <td><em></em></td>\
            <td><input type='number' style='width: 100px' onchange='changeNumberHandle(this, 100)' id='input_diemtongcong'  disabled/></td>\
            <td><input type='number' style='width: 100px' onchange='changeNumberHandle(this, 100)' id='CVHT_input_diemtongcong' name='diemTongCong' disabled/></td>\
        </tr>"
    );

    $("#tbody_noiDungDanhGia").append(
        "<tr>\
            <td style='font-weight: bold;' >FILE MINH CHỨNG ĐÍNH KÈM (NẾU CÓ): </span>\
            <a href='#' id='input_fileDinhKem' name='fileDinhKem' ></a>\
            <br> <span>Chỉ nhận file định dạng .zip và .rar (file nén)</span>\
            </td>\
            <td></td>\
            <td style='font-weight: bold;text-transform: uppercase;' colspan='2' >Xếp loại: <span id='text_XepLoai' ></span></td>\
            <td style='font-weight: bold;'  ><span></span></td>\
        </tr>"
    );


}

function getThongTinNguoiDung() {
  if (GET_MaSinhVien != null) {
 
    $.ajax({
      url: "../../../api/sinhvien/single_read.php?maSinhVien=" + GET_MaSinhVien,
      async: false,
      type: "GET",
      contentType: "application/json;charset=utf-8",
      dataType: "json",
      headers: {
        Authorization: jwtCookie,
      },
      success: function (result) {
        var hoTenSinhVien = result["hoTenSinhVien"];
        var ngaySinh = new Date(result["ngaySinh"]);
        var maLop = result["maLop"];
        var he = result["he"];

        $.ajax({
          url: "../../../api/lop/single_read.php?maLop=" + maLop,
          async: false,
          type: "GET",
          contentType: "application/json;charset=utf-8",
          dataType: "json",
          headers: {
            Authorization: jwtCookie,
          },
          success: function (result_Lop) {
            var maKhoa = result_Lop["maKhoa"];

            $.ajax({
              url: "../../../api/khoa/single_read.php?maKhoa=" + maKhoa,
              async: false,
              type: "GET",
              contentType: "application/json;charset=utf-8",
              dataType: "json",
              headers: {
                Authorization: jwtCookie,
              },
              success: function (result_Khoa) {
                var tenKhoa = result_Khoa["tenKhoa"];

                
                    $.ajax({
                        url: "../../../api/hockydanhgia/single_read.php?maHocKyDanhGia=" + GET_MaHocKy,
                        async: false,
                        type: "GET",
                        contentType: "application/json;charset=utf-8",
                        dataType: "json",
                        headers: {
                            Authorization: jwtCookie,
                        },
                        success: function (result_HKDG) {
                            var input_hocKyXet = result_HKDG.hocKyXet;
                            var input_namHocXet = result_HKDG.namHocXet;
  
                            $("#part_thongTinSinhVien").append("\<div class='row'>\
                                <div class='col'>\
                                <span style='font-weight: bold;'>Họ tên: </span>" + hoTenSinhVien + "\</div>\
                                <div class='col'>\
                                <span style='font-weight: bold;'>Mã số sinh viên: </span>" + GET_MaSinhVien + "\
                                </div>\
                                <div class='col'>\
                                <span style='font-weight: bold;'>Ngày sinh: </span>" + ngaySinh.toLocaleDateString() + "\
                                </div>\
                                <div class='col'>\
                                <span style='font-weight: bold;'>Lớp: </span><span id='text_MaLop'>" + maLop +"</span>\
                                </div>\
                                </div>\
                                <div class='row'>\
                                <div class='col'>\
                                <span style='font-weight: bold;'>Khoa: </span>" + tenKhoa + "\
                                </div>\
                                <div class='col'>\
                                <span style='font-weight: bold;'>Hệ: </span>" + he + "\
                                </div>\
                                <div class='col'>\
                                <span style='font-weight: bold;'>Học kỳ: </span>" + input_hocKyXet + "\
                                </div>\
                                <div class='col'>\
                                <span style='font-weight: bold;'>Năm học: </span>" + input_namHocXet + "\
                                </div>\
                                <div class='col' style='display: none;'>\
                                <input type='text' id='input_maHocKyDanhGia' value='" +GET_MaHocKy +"' /></span>\
                                </div>\
                                </div>\
                                ");
                              },
                              error: function (errorMessage_tc3) {
                                thongBaoLoi(errorMessage_tc3.responseText);
                              },
                            });
                  }
                      
              
            });
              
          },
          error: function (errorMessage) {
            thongBaoLoi(errorMessage.responseText);
          },
        });
      },
      error: function (errorMessage) {
        thongBaoLoi(errorMessage.responseText);
      },
    });
  }
}

//Kiểm tra hợp lệ trước khi thêm phiếu điểm rèn luyện
function checkValidateInput(){
    var _inputTBCHocKyTruoc = $('#inputTBCHocKyTruoc').val();
    var _inputTBCHocKyDangXet = $('#inputTBCHocKyDangXet').val();
    var _input_diemtongcong = $('#CVHT_input_diemtongcong').val();

   
    if (_input_diemtongcong == ''){
      thongBaoLoi("Vui lòng nhập điểm TỔNG CỘNG cuối cùng.");
      return false;
    }

    if (_input_diemtongcong > 100){
      thongBaoLoi("Điểm tổng cộng không quá 100! Mời nhập lại!");
      return false;
    }

    if (_inputTBCHocKyTruoc != null){
      if (isNaN(parseFloat(_inputTBCHocKyTruoc))){
        thongBaoLoi("Điểm trung bình chung phải là số! Mời nhập lại!");
        return false;
      }else{
        if (parseFloat(_inputTBCHocKyTruoc) > 4){
          thongBaoLoi("Điểm trung bình chung phải nhỏ hơn 4 (hệ 4)!");
          return false;
        }
      }
    }

    if (_inputTBCHocKyDangXet != null){
      if (isNaN(parseFloat(_inputTBCHocKyDangXet))){
        thongBaoLoi("Điểm trung bình chung phải là số! Mời nhập lại!");
        return false;
      }else{
        if (parseFloat(_inputTBCHocKyTruoc) > 4){
          thongBaoLoi("Điểm trung bình chung phải nhỏ hơn 4 (hệ 4)!");
          return false;
        }
      }
    }

    
    return true;
      
   

}


  //Load thông tin sinh viên đã đánh giá
  function LoadThongTinSinhVienDanhGia() {
    
    var maPhieuRenLuyen = "PRL" + GET_MaHocKy + GET_MaSinhVien;

    $.ajax({
        url: "../../../api/phieurenluyen/single_read.php?maPhieuRenLuyen=" + maPhieuRenLuyen,
        async: false,
        type: "GET",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        headers: {
            Authorization: jwtCookie,
        },
        success: function (result_PRL) {
           var xepLoai = result_PRL.xepLoai;
           var diemTongCong = result_PRL.diemTongCong;
           var diemTrungBinhChungHKTruoc = result_PRL.diemTrungBinhChungHKTruoc;
           var diemTrungBinhChungHKXet = result_PRL.diemTrungBinhChungHKXet;
           var fileDinhKem = result_PRL.fileDinhKem;
           var fileDinhKem_Name = fileDinhKem.substring(fileDinhKem.lastIndexOf('/') + 1);
     
           $.ajax({
            url: "../../../api/chamdiemrenluyen/read.php?maPhieuRenLuyen=" + maPhieuRenLuyen,
            async: false,
            type: "GET",
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            headers: {
                Authorization: jwtCookie,
            },
            success: function (result_CD) {
              $("#inputTBCHocKyTruoc").val(diemTrungBinhChungHKTruoc);
              $("#inputTBCHocKyDangXet").val(diemTrungBinhChungHKXet);
              //$("#input_diemtongcong").val(diemTongCong);
              $("#CVHT_input_diemtongcong").val(diemTongCong);
              $("#text_XepLoai").text(xepLoai);
              $("#input_fileDinhKem").text(fileDinhKem_Name);
              $("#input_fileDinhKem").attr("href", fileDinhKem);


              $.each(result_CD, function (index_cd) {
                for (var p = 0;p < result_CD[index_cd].length;p++) {
                  var maTieuChi2 = result_CD[index_cd][p].maTieuChi2;
                  var maTieuChi3 = result_CD[index_cd][p].maTieuChi3;
                  var diemSinhVienDanhGia = result_CD[index_cd][p].diemSinhVienDanhGia;
                  var diemLopDanhGia = result_CD[index_cd][p].diemLopDanhGia;

                  $('#tbody_noiDungDanhGia').find('input').each(function () {
                      var tieuChi = this.id.slice(0, 3);
                      var maTieuChi = this.id.slice(4,9);

                      if (tieuChi == 'TC2'){
                        if (maTieuChi2 == maTieuChi){
                          $("#" + this.id).val(diemSinhVienDanhGia);
                          
                          if (diemLopDanhGia != 0){
                            $("#CVHT_" + this.id).val(diemLopDanhGia);
                          }else{
                            $("#CVHT_" + this.id).val(diemSinhVienDanhGia);
                          }
                          
                        }
                      }

                      if (tieuChi == 'TC3'){
                        if (maTieuChi3 == maTieuChi){
                          $("#" + this.id).val(diemSinhVienDanhGia);

                          if (diemLopDanhGia != 0){
                            $("#CVHT_" + this.id).val(diemLopDanhGia);
                          }else{
                            $("#CVHT_" + this.id).val(diemSinhVienDanhGia);
                          }
                        }
                      }
            
                  });


                }
              });
    
            },
            error: function (errorMessage_tc3) {
              thongBaoLoi(errorMessage_tc3.responseText);
            },
          });

         
        },
        error: function (errorMessage_tc3) {
          thongBaoLoi(errorMessage_tc3.responseText);
        },
    });



  }
