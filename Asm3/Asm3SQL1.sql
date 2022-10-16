CREATE TABLE NHACUNGCAP(
    MaNhaCC varchar(10) PRIMARY KEY check(MaNhaCC like 'NCC%'),
    TenNhaCC nVARCHAR(200) not null UNIQUE,
    DiaChi VARCHAR(20) not null,
    SoDT VARCHAR(15) not null UNIQUE,
    MaSoThue varchar(10) not null UNIQUE
);
CREATE TABLE LOAIDICHVU(
    MaLoaiDV VARCHAR(10) PRIMARY KEY check(MaLoaiDV like 'DV%'),
    TenLoaiDV NVARCHAR(200) not null
);
CREATE TABLE MUCPHI(
    MaMP VARCHAR(10) PRIMARY KEY check(MaMP like 'MP%'),
    DonGia DECIMAL(16,0) not null Check(DonGia >=0),
    Mota VARCHAR(200)
);
CREATE TABLE DONGXE(
    DongXe VARCHAR(20) PRIMARY KEY,
    HangXe VARCHAR(20) not null,
    SoChoNgoi int not null
);
CREATE TABLE DANGKYDICHVU(
    MaDKCC VARCHAR(10) PRIMARY KEY check(MaDKCC like 'DK%'),
    MaNhaCC VARCHAR(10) not null FOREIGN KEY REFERENCES NHACUNGCAP(MaNhaCC),
    MaLoaiDV VARCHAR(10) not null FOREIGN KEY REFERENCES LOAIDICHVU(MaLoaiDV),
    DongXe VARCHAR(20) not null FOREIGN KEY REFERENCES DONGXE(DongXe),
    MaMP VARCHAR(10) not null FOREIGN KEY REFERENCES MUCPHI(MaMP),
    NgayBatDauCungCap date not null,
    NgayKetThucCungCap date not null,
    SoLuongXeDangKy int not null
);