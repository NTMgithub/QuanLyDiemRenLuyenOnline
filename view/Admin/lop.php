<script src="assets/js/check_token.js"></script>
<script>
	//remove class active
	$("#menu-button-ThongKe").removeClass("active");
	$("#menu-button-SinhVien").removeClass("active");
	$("#menu-button-HoatDongDanhGia").removeClass("active");
	$("#menu-button-Khoa").removeClass("active");
	$("#menu-button-PhieuRenLuyen").removeClass("active");
	$("#menu-button-CoVanHocTap").removeClass("active");
	$("#menu-button-TieuChiDanhGia").removeClass("active");
	$("#menu-button-ThongBaoDanhGia").removeClass("active");

	//add class active
	$("#menu-button-Lop").addClass("active");

	//set title
	document.title = "Lớp | Web điểm rèn luyện";
</script>

<div class="app-content pt-3 p-md-3 p-lg-4">
	<div class="container-xl">

		<h1 class="app-page-title">.</h1>
		<h1 class="app-page-title"><img src="assets/images/icons/class.png" alt="" width="30px"> Lớp</h1>

		<div class="row g-4 mb-4">

			<div class="col-auto">
				<div class="page-utilities">
					<div class="row g-2 justify-content-start justify-content-md-end align-items-center">

						<div class="col-auto">

							<select class="form-select w-auto" id="select_Khoa">

							</select>
						</div>


						<div class="col-auto">
							<div class="table-search-form row gx-1 align-items-center">
								<div class="col-auto">
									<input type="text" id="input_timKiemMaLop" name="" class="form-control" placeholder="Nhập mã lớp...">
								</div>
								<div class="col-auto">
									<button type="button" onclick="return TimKiemLop($('#input_timKiemMaSinhVien').val());" class="btn app-btn-secondary">Tìm kiếm</button>
								</div>

								<div class="col-auto" style="padding-left: 15px;">
									<button class="btn app-btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#AddModal">Thêm mới</button>
								</div>

								<div class="col-auto" style="padding-left: 15px;">
									<button class="btn app-btn-primary" type="button" data-bs-toggle="" data-bs-target="#" disabled>Import danh sách</button>
								</div>
							</div>

						</div>
						<!--//col-->
						<!-- <div class="col-auto" style="padding-left: 15px;">
								<button class="btn app-btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">Thêm mới</button>
							</div> -->

					</div>
					<!--//row-->
				</div>
				<!--//table-utilities-->
			</div>
			<!--//col-auto-->

			<!-- Modal thêm -->
			<div class="modal fade" id="AddModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<img src="assets/images/icons/add.png" width="25px" style="padding-right: 5px;">
							<h5 class="modal-title" id="exampleModalLabel"> Thêm lớp</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">

							<div class="mb-3">
								<label for="input_MaLop" class="form-label" style="color: black; font-weight: 500;">Mã lớp</label>
								<input type="text" class="form-control mb-2" id="input_MaLop" placeholder="Nhập mã lớp...">
							</div>

							<div class="mb-3">
								<label for="input_TenLop" class="form-label" style="color: black; font-weight: 500;">Tên lớp</label>
								<input type="text" class="form-control" id="input_TenLop" placeholder="Nhập tên lớp...">
							</div>

							<div class="mb-3">
								<label for="select_Khoa_Add" class="form-label" style="color: black; font-weight: 500;">Khoa</label>
								<select class="form-select" aria-label="Default select example" id="select_Khoa_Add">

								</select>
							</div>

							<div class="mb-3">
								<label for="select_CVHT_Add" class="form-label" style="color: black; font-weight: 500;">Cố vấn học tập</label>
								<select class="form-select" aria-label="Default select example" id="select_CVHT_Add">

								</select>
							</div>

							<div class="mb-3">
								<label for="select_KhoaHoc_Add" class="form-label" style="color: black; font-weight: 500;">Khóa học</label>
								<select class="form-select" aria-label="Default select example" id="select_KhoaHoc_Add">

								</select>
							</div>


						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
							<button type="button" class="btn btn-primary" style='color: white;' onclick="return ThemMoi_Lop()">Thêm mới</button>
						</div>
					</div>
				</div>
			</div>


			<!-- Modal chỉnh sửa -->
			<div class="modal fade" id="ChinhSuaModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<img src="assets/images/icons/edit.png" width="25px" style="padding-right: 5px;">
							<h5 class="modal-title" id="exampleModalLabel"> Chỉnh sửa lớp</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">

							<div class="mb-3">
								<label for="edit_input_MaLop" class="form-label" style="color: black; font-weight: 500;">Mã lớp</label>
								<input type="text" class="form-control mb-2" id="edit_input_MaLop" placeholder="Nhập mã lớp..." readonly>
							</div>

							<div class="mb-3">
								<label for="edit_input_TenLop" class="form-label" style="color: black; font-weight: 500;">Tên lớp</label>
								<input type="text" class="form-control" id="edit_input_TenLop" placeholder="Nhập tên lớp...">
							</div>

							<div class="mb-3">
								<label for="edit_select_Khoa_Add" class="form-label" style="color: black; font-weight: 500;">Khoa</label>
								<select class="form-select" aria-label="Default select example" id="edit_select_Khoa_Add">

								</select>
							</div>

							<div class="mb-3">
								<label for="edit_select_CVHT_Add" class="form-label" style="color: black; font-weight: 500;">Cố vấn học tập</label>
								<select class="form-select edit_select_CVHT_Add" aria-label="Default select example" id="edit_select_CVHT_Add">

								</select>
							</div>

							<div class="mb-3">
								<label for="edit_select_KhoaHoc_Add" class="form-label" style="color: black; font-weight: 500;">Khóa học</label>
								<select class="form-select" aria-label="Default select example" id="edit_select_KhoaHoc_Add">

								</select>
							</div>


						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
							<button type="button" class="btn btn-warning" style='color: white;' onclick="return ChinhSua_Lop()">Chỉnh sửa</button>
						</div>
					</div>	
				</div>
			</div>



			<div class="tab-pane fade show active" id="orders-all" role="tabpanel" aria-labelledby="orders-all-tab">
				<div class="app-card app-card-orders-table shadow-sm mb-5">
					<div class="app-card-body">
						<div class="table-responsive">
							<table class="table app-table-hover mb-0 text-left">
								<thead>
									<tr>
										<th class="cell">STT</th>
										<th class="cell">Mã lớp</th>
										<th class="cell">Tên lớp</th>
										<th class="cell">Mã khoa</th>
										<th class="cell">Mã cố vấn học tập</th>
										<th class="cell">Mã khóa học</th>
										<th class="cell"></th>
									</tr>
								</thead>
								<tbody id="id_tbodyLop">

								</tbody>
							</table>
						</div>
						<!--//table-responsive-->

					</div>
					<!--//app-card-body-->
				</div>
				<!--//app-card-->
				<nav class="app-pagination" id="idPhanTrang">
					<!-- <ul class="pagination justify-content-center" id="idPhanTrang">
							
						</ul> -->
				</nav>
				<!--//app-pagination-->

			</div>
			<!--//tab-pane-->



		</div>
		<!--//row-->


	</div>
	<!--//container-fluid-->
</div>
<!--//app-content-->

<footer class="app-footer">

</footer>
<!--//app-footer-->



<!-- Page Specific JS -->
<script src="assets/js/lop/function.js"></script>

<script>
	// setTimeout(function() {
	// 	$('.loader_bg').fadeToggle();
	// }, 1000);

	//hàm trong function.js
	var maKhoa = 'tatcakhoa';

	if (maKhoa != '') {
		GetListLop(maKhoa);
	}

	$('#select_Khoa').on('change', function() {
		var maKhoa = $('#id_tbodyLop').val();

		if (maKhoa != '') {
			GetListLop(maKhoa);
		}

	});

	$('#input_timKiemMaLop').on('change', function() {
		var maLop = $('#input_timKiemMaLop').val();

		if (maLop != '') {
			TimKiemLop(maLop);
		}

	});


	LoadComboBoxThongTinKhoa_Lop();

	LoadComboBoxCoVanHocTap_AddModal();

	LoadComboBoxKhoaHoc_AddModal();


	//add modal
	var select_box_element_Khoa = document.querySelector('#select_Khoa_Add');

	dselect(select_box_element_Khoa, {
		search: true
	});


	var select_box_element_CVHT = document.querySelector('#select_CVHT_Add');

	dselect(select_box_element_CVHT, {
		search: true
	});


	var select_box_element_KhoaHoc = document.querySelector('#select_KhoaHoc_Add');

	dselect(select_box_element_KhoaHoc, {
		search: true
	});




	//Xử lý chỉnh sửa
	$(document).on("click", ".btn_ChinhSua_Lop", function() {

		let maLop_edit = $(this).attr('data-id');

		$('#edit_input_MaLop').val(maLop_edit);

		LoadThongTinChinhSua_Lop(maLop_edit);

		//edit modal
		var edit_select_box_element_Khoa = document.querySelector('#edit_select_Khoa_Add');

		dselect(edit_select_box_element_Khoa, {
			search: true
		});

		var edit_select_box_element_CVHT = document.querySelector('#edit_select_CVHT_Add');

		dselect(edit_select_box_element_CVHT, {
			search: true
		});

		var edit_select_box_element_KhoaHoc = document.querySelector('#edit_select_KhoaHoc_Add');

		dselect(edit_select_box_element_KhoaHoc, {
			search: true
		});


	})
</script>