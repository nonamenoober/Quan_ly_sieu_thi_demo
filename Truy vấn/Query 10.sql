select a.MaNV, a.Ho, a.Ten from(
select nhanvien.MaNV, nhanvien.Ho, nhanvien.Ten
from new_supermarket.bang_luong join new_supermarket.nhanvien
on bang_luong.MaNV=nhanvien.MaNV
where So_ngay_lam >= 25)
as a
inner join
(SELECT top_employees.MaNV, top_employees.Ho, top_employees.Ten
FROM (
  SELECT nhanvien.MaNV, nhanvien.Ho, nhanvien.Ten, COUNT(phieunhap.MaPN) AS so_phieu_nhap
  FROM new_supermarket.phieunhap
  JOIN new_supermarket.nhanvien ON phieunhap.MaNV = nhanvien.MaNV
  GROUP BY nhanvien.MaNV, nhanvien.Ho, nhanvien.Ten
  ORDER BY so_phieu_nhap DESC
  LIMIT 20
) AS top_employees)
as b
on a.MaNV=b.MaNV
