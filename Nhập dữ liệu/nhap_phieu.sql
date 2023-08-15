LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/phieunhap2.csv'
INTO TABLE new_supermarket.phieunhap
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
IGNORE 1 ROWS 
(@MaPN, @MaSP, @Gia, @So_luong, @Thanh_tien, @MaNV, @Ngay_nhap)
SET MaPN = @MaPN, MaSP = @MaSP, Don_gia = @Gia, So_luong_nhap = @So_luong, Thanh_tien = @Thanh_tien, MaNV = @MaNV, Ngay_nhap = @Ngay_nhap;