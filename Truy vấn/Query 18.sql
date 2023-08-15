SELECT khachhang.TenKH, khachhang.SDT, hoadon.Ngay_lap, 
   SUM(chi_tiet_hoa_don.Thanh_tien) AS total_cost
FROM new_supermarket.khachhang, new_supermarket.hoadon, 
   new_supermarket.chi_tiet_hoa_don, new_supermarket.sanpham
WHERE khachhang.MaKH = hoadon.MaKH 
   AND hoadon.MaHD = chi_tiet_hoa_don.MaHD 
   AND chi_tiet_hoa_don.MaSP = sanpham.MaSP 
   AND hoadon.Ngay_lap BETWEEN "2023-05-01" AND "2023-05-12"
   AND sanpham.Han_su_dung < hoadon.Ngay_lap
GROUP BY 
   khachhang.TenKH, 
   khachhang.SDT, 
   hoadon.Ngay_lap
HAVING 
   total_cost > 0
ORDER BY 
   khachhang.TenKH;