SELECT SUM(CASE 
             WHEN khachhang.Tuoi > 30 THEN chi_tiet_hoa_don.Thanh_tien
             ELSE CASE 
                    WHEN hoadon.MaGG = '1457' THEN chi_tiet_hoa_don.Thanh_tien * 0.95
                    WHEN hoadon.MaGG = '2000' THEN chi_tiet_hoa_don.Thanh_tien * 0.9
                    ELSE chi_tiet_hoa_don.Thanh_tien
                  END
           END) 
           > 
           SUM(CASE 
             WHEN khachhang.Tuoi <= 30 AND hoadon.MaGG IN ('1457', '2000') THEN chi_tiet_hoa_don.Thanh_tien * 
             CASE 
               WHEN hoadon.MaGG = '1457' THEN 0.95
               WHEN hoadon.MaGG = '2000' THEN 0.9
             END
             ELSE chi_tiet_hoa_don.Thanh_tien
           END) AS is_greater_than
FROM 
   new_supermarket.chi_tiet_hoa_don
   LEFT JOIN new_supermarket.hoadon ON chi_tiet_hoa_don.MaHD = hoadon.MaHD
   LEFT JOIN new_supermarket.khachhang ON khachhang.MaKH = hoadon.MaKH
