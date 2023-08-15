SELECT 
   s.MaSP,
   COALESCE(SUM(p.So_luong_nhap), 0) - COALESCE(SUM(c.So_luong), 0) + COALESCE(s.so_luong_ton, 0) AS So_luong_ton_cuoi
FROM 
   new_supermarket.phieunhap p
   JOIN new_supermarket.sanpham s ON p.MaSP = s.MaSP
   LEFT JOIN new_supermarket.chi_tiet_hoa_don c ON p.MaSP = c.MaSP
GROUP BY 
   s.MaSP;