SELECT sanpham.MaSP, SUM(sanpham.So_luong_ton + phieunhap.So_luong_nhap) AS total_so_luong
FROM new_supermarket.sanpham
JOIN new_supermarket.phieunhap ON sanpham.MaSP = phieunhap.MaSP
GROUP BY sanpham.MaSP
order by total_so_luong asc;

