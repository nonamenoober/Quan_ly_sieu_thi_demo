delete from new_supermarket.chi_tiet_hoa_don where chi_tiet_hoa_don.MaHD !=0;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/chi_tiet_hoa_don.csv'
INTO TABLE new_supermarket.chi_tiet_hoa_don
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
ignore 1 rows 
(@MaCTHD, @MaHD, @MaHH, @DonGia, @SL,@Thanh_tien)
SET MaCTHD = @MaCTHD, MaHD = @MaHD, MaSP = @MaHH, Don_gia = @DonGia, So_luong = @SL, Thanh_tien= @Thanh_tien;