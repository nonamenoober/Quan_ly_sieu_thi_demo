SELECT revenue_by_department.MaQuay, revenue_by_department.total_revenue FROM (
   SELECT SUM(chi_tiet_hoa_don.Thanh_tien) AS total_revenue, 
      quay_bo_phan.MaQuay
   FROM 
      new_supermarket.chi_tiet_hoa_don
      LEFT JOIN new_supermarket.sanpham ON chi_tiet_hoa_don.MaSP = sanpham.MaSP
      LEFT JOIN new_supermarket.quay_bo_phan ON sanpham.MaQuay = quay_bo_phan.MaQuay
   GROUP BY quay_bo_phan.MaQuay
) AS revenue_by_department
INNER JOIN (
   SELECT MAX(total_revenue) AS max_revenue FROM (
      SELECT SUM(chi_tiet_hoa_don.Thanh_tien) AS total_revenue, 
         quay_bo_phan.MaQuay
      FROM 
         new_supermarket.chi_tiet_hoa_don
         LEFT JOIN new_supermarket.sanpham ON chi_tiet_hoa_don.MaSP = sanpham.MaSP
         LEFT JOIN new_supermarket.quay_bo_phan ON sanpham.MaQuay = quay_bo_phan.MaQuay
      GROUP BY 
         quay_bo_phan.MaQuay
   ) AS revenue_by_department
) AS max_revenue_query ON revenue_by_department.total_revenue = max_revenue_query.max_revenue;