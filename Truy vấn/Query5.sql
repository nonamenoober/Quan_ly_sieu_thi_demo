SELECT quay_bo_phan.MaQuay, SUM(so_luong_ton) AS total_quantity
FROM new_supermarket.sanpham
LEFT JOIN new_supermarket.quay_bo_phan ON quay_bo_phan.MaQuay = sanpham.MaQuay
GROUP BY quay_bo_phan.MaQuay
HAVING SUM(so_luong_ton) = (
    SELECT MAX(total_quantity)
    FROM (
        SELECT quay_bo_phan.MaQuay, SUM(so_luong_ton) AS total_quantity
        FROM new_supermarket.sanpham
        LEFT JOIN new_supermarket.quay_bo_phan ON quay_bo_phan.MaQuay = sanpham.MaQuay
        GROUP BY MaQuay
    ) AS maximum
)

