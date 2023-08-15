SELECT 
   qbp.MaQuay, 
   COALESCE(MAX(total.Thanh_tien), "None") AS max_Thanh_tien 
FROM 
   new_supermarket.quay_bo_phan qbp
   LEFT JOIN (
      SELECT 
         s.MaQuay, 
         SUM(cthd.Thanh_tien) AS Thanh_tien 
      FROM 
         new_supermarket.chi_tiet_hoa_don cthd
         JOIN new_supermarket.sanpham s ON s.MaSP = cthd.MaSP 
      GROUP BY 
         s.MaQuay, 
         cthd.MaSP
   ) AS total ON qbp.MaQuay = total.MaQuay 
GROUP BY 
   qbp.MaQuay;