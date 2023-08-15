select khachhang.TenKH, khachhang.SDT, count(khachhang.MaKH) as so_lan_den_sieu_thi 
from new_supermarket.khachhang join new_supermarket.hoadon
on khachhang.MaKH=hoadon.MaKH
group by khachhang.MaKH
order by so_lan_den_sieu_thi desc