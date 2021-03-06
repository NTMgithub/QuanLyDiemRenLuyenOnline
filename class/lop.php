<?php
    class Lop{
        // Connection
        private $conn;
        // Table
        private $db_table = "lop";
        // Columns
        public $maLop;
        public $tenLop;
        public $maKhoa;
        public $maCoVanHocTap;
        public $maKhoaHoc;
        
        // Db connection
        public function __construct($db){
            $this->conn = $db;
        }

        //-------------------
        //Các chức năng

        // GET ALL
        public function getAllLop(){
            $sqlQuery = "SELECT maLop, tenLop, maKhoa, maCoVanHocTap, maKhoaHoc FROM " . $this->db_table . "";
            $stmt = $this->conn->prepare($sqlQuery);
            $stmt->execute();
            return $stmt;
        }

        //GET ALL LOP THEO MA CO VAN
        public function getAllLopTheoMaCoVan($maCoVanHocTap){
            $sqlQuery = "SELECT maLop, tenLop, maKhoa, maCoVanHocTap, maKhoaHoc FROM " . $this->db_table . " 
                        WHERE maCoVanHocTap = ? ";
            $stmt = $this->conn->prepare($sqlQuery);
            $stmt->bindParam(1, $maCoVanHocTap);
            $stmt->execute();
            return $stmt;
        }
        

        //GET ALL LOP THEO MA Khoa
        public function getAllLopTheoMaKhoa($maKhoa){
            $sqlQuery = "SELECT maLop, tenLop, maKhoa, maCoVanHocTap, maKhoaHoc FROM " . $this->db_table . " 
                        WHERE maKhoa = ? ";
            $stmt = $this->conn->prepare($sqlQuery);
            $stmt->bindParam(1, $maKhoa);
            $stmt->execute();
            return $stmt;
        }
        
        // READ single
        public function getSingleLop(){
            $sqlQuery = "SELECT maLop, tenLop, maKhoa, maCoVanHocTap, maKhoaHoc FROM ". $this->db_table ."
                        WHERE maLop = ? LIMIT 0,1";
            $stmt = $this->conn->prepare($sqlQuery);
            $stmt->bindParam(1, $this->maLop);
            $stmt->execute();

            $dataRow = $stmt->fetch(PDO::FETCH_ASSOC);
            
            if ($dataRow != null){
                $this->maLop = $dataRow['maLop'];
                $this->tenLop = $dataRow['tenLop'];
                $this->maKhoa = $dataRow['maKhoa'];
                $this->maCoVanHocTap = $dataRow['maCoVanHocTap'];
                $this->maKhoaHoc = $dataRow['maKhoaHoc'];
            }
            
        }

        // CREATE
        public function createLop(){
            $sqlQuery = "INSERT INTO
                        ". $this->db_table ."
                    SET
                        maLop = :maLop,
                        tenLop = :tenLop, 
                        maKhoa = :maKhoa, 
                        maCoVanHocTap = :maCoVanHocTap,
                        maKhoaHoc = :maKhoaHoc";
                        
        
            $stmt = $this->conn->prepare($sqlQuery);
        
            // sanitize (Lọc dữ liệu đầu vào tránh SQLInjection, XSS)
            $this->maLop=htmlspecialchars(strip_tags($this->maLop));
            $this->tenLop=htmlspecialchars(strip_tags($this->tenLop));
            $this->maKhoa=htmlspecialchars(strip_tags($this->maKhoa));
            $this->maCoVanHocTap=htmlspecialchars(strip_tags($this->maCoVanHocTap));
            $this->maKhoaHoc=htmlspecialchars(strip_tags($this->maKhoaHoc));
        
            // bind data
            $stmt->bindParam(":maLop", $this->maLop);
            $stmt->bindParam(":tenLop", $this->tenLop);
            $stmt->bindParam(":maKhoa", $this->maKhoa);
            $stmt->bindParam(":maCoVanHocTap", $this->maCoVanHocTap);
            $stmt->bindParam(":maKhoaHoc", $this->maKhoaHoc);
        
            if($stmt->execute()){
               return true;
            }
            return false;
        }

        // UPDATE
        public function updateLop(){
            $sqlQuery = "UPDATE
                        ". $this->db_table ."
                    SET
                        tenLop = :tenLop, 
                        maKhoa = :maKhoa, 
                        maCoVanHocTap = :maCoVanHocTap,
                        maKhoaHoc = :maKhoaHoc
                    WHERE 
                        maLop = :maLop";
        
            $stmt = $this->conn->prepare($sqlQuery);
        
            // sanitize (Lọc dữ liệu đầu vào tránh SQLInjection, XSS)
            $this->maLop=htmlspecialchars(strip_tags($this->maLop));
            $this->tenLop=htmlspecialchars(strip_tags($this->tenLop));
            $this->maKhoa=htmlspecialchars(strip_tags($this->maKhoa));
            $this->maCoVanHocTap=htmlspecialchars(strip_tags($this->maCoVanHocTap));
            $this->maKhoaHoc=htmlspecialchars(strip_tags($this->maKhoaHoc));
        
            // bind data
            $stmt->bindParam(":maLop", $this->maLop);
            $stmt->bindParam(":tenLop", $this->tenLop);
            $stmt->bindParam(":maKhoa", $this->maKhoa);
            $stmt->bindParam(":maCoVanHocTap", $this->maCoVanHocTap);
            $stmt->bindParam(":maKhoaHoc", $this->maKhoaHoc);
        
        
            if($stmt->execute()){
               return true;
            }
            return false;
        }

        // DELETE
        function deleteLop(){
            $sqlQuery = "DELETE FROM " . $this->db_table . " WHERE maLop = ?";
            $stmt = $this->conn->prepare($sqlQuery);
        
            $this->maLop=htmlspecialchars(strip_tags($this->maLop));
        
            $stmt->bindParam(1, $this->maLop);
        
            if($stmt->execute()){
                return true;
            }
            return false;
        }


    }

?>