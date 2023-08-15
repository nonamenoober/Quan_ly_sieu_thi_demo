SELECT
   hoadon.MaHD, 
   SUM(chi_tiet_hoa_don.Thanh_tien) AS total_cost, 
   GROUP_CONCAT(sanpham.TenSP SEPARATOR ', ') AS product_names
FROM 
   new_supermarket.hoadon 
   LEFT JOIN new_supermarket.chi_tiet_hoa_don ON hoadon.MaHD = chi_tiet_hoa_don.MaHD
   LEFT JOIN new_supermarket.sanpham ON sanpham.MaSP = chi_tiet_hoa_don.MaSP
WHERE 
   hoadon.MaHD = ANY(
      SELECT DISTINCT 
         hoadon.MaHD 
      FROM 
         new_supermarket.hoadon 
         LEFT JOIN new_supermarket.chi_tiet_hoa_don ON hoadon.MaHD = chi_tiet_hoa_don.MaHD
         LEFT JOIN new_supermarket.sanpham ON sanpham.MaSP = chi_tiet_hoa_don.MaSP
      WHERE 
         sanpham.TenSP LIKE "%Dép%"
   )
GROUP BY 
   hoadon.MaHD
ORDER BY 
   hoadon.MaHD;