Cau 3
select DongXe from DONGXE where SoChoNgoi >5;

Cau 4

select TenNhaCC from NHACUNGCAP where MaNhaCC in 
(select MaNhaCC from DANGKYDICHVU where DongXe in (select DongXe from DONGXE where HangXe like 'Toyota') and MaMP in (select MaMP from MUCPHI where DonGia =15000)) 
or MaNhaCC in
(select MaNhaCC from DANGKYDICHVU where DongXe in (select DongXe from DONGXE where HangXe like 'KIA') and MaMP in (select MaMP from MUCPHI where DonGia =20000))

Cau 5

select * from NHACUNGCAP order by TenNhaCC asc, MaSoThue desc;

Cau 6

select A.TenNhaCC,A.MaNhaCC,B.MaNhaCC,B.NgayBatDauCungCap from NHACUNGCAP A inner join DANGKYDICHVU B on A.MaNhaCC = B.MaNhaCC where B.NgayBatDauCungCap = '2015-11-20';