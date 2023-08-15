SELECT 
   qbp.MaQuay, 
   coalesce(MAX(total.sum_on_ma_quay)) AS max_Thanh_tien 
FROM 
   new_supermarket.quay_bo_phan qbp
   LEFT JOIN (
      SELECT 
         s.MaQuay, 
         SUM(cthd.Thanh_tien) AS sum_on_ma_quay 
      FROM 
         new_supermarket.chi_tiet_hoa_don cthd
         JOIN new_supermarket.sanpham s ON s.MaSP = cthd.MaSP 
      GROUP BY 
         cthd.MaSP,
         s.MaQuay
   ) AS total ON qbp.MaQuay = total.MaQuay 
GROUP BY 
   qbp.MaQuay;
