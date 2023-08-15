SELECT a.MaSP, a.total AS total_male, b.total AS total_female
FROM (
    SELECT sanpham.MaSP, SUM(So_luong) AS total
    FROM new_supermarket.chi_tiet_hoa_don 
    JOIN new_supermarket.sanpham ON sanpham.MaSP = chi_tiet_hoa_don.MaSP 
    LEFT JOIN new_supermarket.hoadon ON hoadon.MaHD = chi_tiet_hoa_don.MaHD 
    JOIN new_supermarket.khachhang ON khachhang.MaKH = hoadon.MaKH 
    WHERE khachhang.Gioi_tinh = 'Nam'
    GROUP BY sanpham.MaSP 
    ORDER BY total DESC
) AS a
INNER JOIN (
    SELECT sanpham.MaSP, SUM(So_luong) AS total
    FROM new_supermarket.chi_tiet_hoa_don 
    JOIN new_supermarket.sanpham ON sanpham.MaSP = chi_tiet_hoa_don.MaSP 
    LEFT JOIN new_supermarket.hoadon ON hoadon.MaHD = chi_tiet_hoa_don.MaHD 
    JOIN new_supermarket.khachhang ON khachhang.MaKH = hoadon.MaKH 
    WHERE khachhang.Gioi_tinh = 'Nữ'
    GROUP BY sanpham.MaSP 
    ORDER BY total DESC
) AS b
ON a.MaSP = b.MaSP;
