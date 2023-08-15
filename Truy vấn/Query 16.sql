SELECT 
   nhanvien.MaNV, 
   nhanvien.Ho, 
   nhanvien.Ten, 
   IF(nhanvien.GioiTinh = "Nữ" AND TIMESTAMPDIFF(YEAR, nhanvien.Ngay_sinh, NOW()) > 30, 
      bang_luong.Tien_luong * 1.1, 
      IF(nhanvien.GioiTinh = "Nữ", bang_luong.Tien_luong * 1.05, bang_luong.Tien_luong)
   ) AS new_salary
FROM new_supermarket.nhanvien LEFT JOIN new_supermarket.bang_luong
ON nhanvien.MaNV = bang_luong.MaNV
WHERE nhanvien.GioiTinh = "Nữ";