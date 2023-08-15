select hoadon.MaHD, sum(Thanh_tien) 
from new_supermarket.chi_tiet_hoa_don inner join new_supermarket.hoadon 
on hoadon.MaHD=chi_tiet_hoa_don.MaHD
where hoadon.Ngay_lap='2023-05-12' 
group by hoadon.MaHD 

