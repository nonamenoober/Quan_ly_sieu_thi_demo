select MaGG, count(MaGG)
from new_supermarket.hoadon
where hoadon.MaGG <> 0
group by MaGG
