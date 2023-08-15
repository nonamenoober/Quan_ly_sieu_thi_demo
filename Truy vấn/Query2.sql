SELECT hoadon.MaHD, SUM(Thanh_tien) AS total,MaKH
FROM new_supermarket.chi_tiet_hoa_don, hoadon
where hoadon.MaHD=chi_tiet_hoa_don.MaHD
GROUP BY MaHD
ORDER BY MaHD ASC;