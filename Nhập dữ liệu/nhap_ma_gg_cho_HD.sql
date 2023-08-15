UPDATE new_supermarket.hoadon
INNER JOIN new_supermarket.khachhang
ON new_supermarket.hoadon.MaKH = new_supermarket.khachhang.MaKH
SET new_supermarket.hoadon.MaGG =
CASE
WHEN new_supermarket.khachhang.Tuoi <= 20 THEN 2000
WHEN new_supermarket.khachhang.DiaChi LIKE '%Đống Đa%' THEN 1457
ELSE NULL -- handle other cases if needed
END;