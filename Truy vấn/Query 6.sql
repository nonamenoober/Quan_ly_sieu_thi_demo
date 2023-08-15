SELECT khachhang.SDT, SUM(Thanh_tien)
FROM new_supermarket.hoadon
JOIN new_supermarket.khachhang ON khachhang.MaKH = hoadon.MaKH
JOIN new_supermarket.chi_tiet_hoa_don ON hoadon.MaHD = chi_tiet_hoa_don.MaHD
GROUP BY khachhang.MaKH
HAVING SUM(Thanh_tien) = (
    SELECT MAX(total_bill)
    FROM (
        SELECT khachhang.MaKH, SUM(Thanh_tien) AS total_bill
        FROM new_supermarket.hoadon
        JOIN new_supermarket.khachhang ON khachhang.MaKH = hoadon.MaKH
        JOIN new_supermarket.chi_tiet_hoa_don ON hoadon.MaHD = chi_tiet_hoa_don.MaHD
        GROUP BY khachhang.MaKH
    ) AS bills_by_customer
);
