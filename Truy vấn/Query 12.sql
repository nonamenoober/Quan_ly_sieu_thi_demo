SELECT hoadon.MaHD, hoadon.MaGG,
       SUM(CASE 
             WHEN hoadon.MaGG = '1457' THEN Thanh_tien * 0.95
             WHEN hoadon.MaGG = '2000' THEN Thanh_tien * 0.9
             ELSE Thanh_tien
           END) AS total_value
FROM new_supermarket.chi_tiet_hoa_don join new_supermarket.hoadon
on hoadon.MaHD=chi_tiet_hoa_don.MaHD
WHERE hoadon.MaHD IN (
  SELECT hoadon.MaHD
  FROM new_supermarket.khachhang
  JOIN new_supermarket.hoadon
  ON khachhang.MaKH = hoadon.MaKH
  WHERE hoadon.MaGG <> 0
  AND hoadon.MaGG IN ('1457', '2000') -- add this condition to filter by MaGG
  ORDER BY khachhang.MaKH DESC
)
GROUP BY hoadon.MaHD, hoadon.MaGG;