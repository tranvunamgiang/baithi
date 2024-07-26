CREATE TABLE LoaiSP (
    MaLSP VARCHAR(20) PRIMARY KEY,
    TenLSP VARCHAR(100)
);

CREATE TABLE NhanVien (
    IDNhanVien INT PRIMARY KEY,
    TenNV VARCHAR(100)
);
CREATE TABLE SanPham (
    MaSP VARCHAR(20) PRIMARY KEY,
    NgaySX DATE,
    TenSP VARCHAR(100),
    MaLSP VARCHAR(20),
    IDNhanVien INT,
    FOREIGN KEY (MaLSP) REFERENCES LoaiSP(MaLSP),
    FOREIGN KEY (IDNhanVien) REFERENCES NhanVien(IDNhanVien),
    CONSTRAINT fk_MaLSP FOREIGN KEY (MaLSP) REFERENCES LoaiSP(MaLSP),
    CONSTRAINT fk_NhanVien FOREIGN KEY (IDNhanVien) REFERENCES NhanVien(IDNhanVien),
);

INSERT INTO LoaiSP VALUES ('Z37E','Máy tính sách tay Z37')
INSERT INTO SanPham VALUES(
    'Z37 111111',
    '2009-12-12',
    'Máy tính sách tay Z37',
    'Z37E',
    987688

)
INSERT INTO NhanVien VALUES (
    987688 ,
'Nguyễn Văn A'
)
INSERT INTO LoaiSP VALUES ('Z38F','Máy tính sách tay Z38')
INSERT INTO SanPham VALUES(
    'Z38 111111',
    '2009-12-19',
    'Máy tính sách tay Z38',
    'Z38F',
    987689
)
INSERT INTO NhanVien VALUES (
    987689 ,
    'Nguyễn Văn B'
)
/* 4 */
SELECT MaLSP TenLSP FROM LoaiSP
SELECT MaSP, NgaySX, TenSP, TenLSP IDNhanVien FROM SanPham
JOIN 
    LoaiSP ON SanPham.MaLSP = LoaiSP.MaLSP
JOIN 
    NhanVien ON SanPham.IDNhanVien = NhanVien.IDNhanVien
SELECT IDNhanVien TenNV FROM NhanVien
/* 5 */
SELECT MaLSP, TenLSP
FROM 
    LoaiSP
ORDER BY 
    TenLSP ASC;
SELECT IDNhanVien , TenNV
FROM NhanVien
ORDER BY 
     TenNV ASC;
SELECT MaSP, NgaySX, TenSP,TenLSP IDNhanVien FROM SanPham
JOIN 
    LoaiSP ON SanPham.MaLSP = LoaiSP.MaLSP
JOIN 
    NhanVien ON SanPham.IDNhanVien = NhanVien.IDNhanVien
WHERE 
SanPham.MaLSP='Z37E'
SELECT MaSP, NgaySX, TenSP, TenLSP IDNhanVien FROM SanPham
JOIN 
    LoaiSP ON SanPham.MaLSP = LoaiSP.MaLSP
JOIN 
    NhanVien ON SanPham.IDNhanVien = NhanVien.IDNhanVien
WHERE NhanVien.TenNV='Nguyễn Văn A',
ORDER BY SanPham.MaSP= DESC;
/* 6 */
SELECT 
    LoaiSP.MaLSP, 
    LoaiSP.TenLSP, 
    COUNT(SanPham.MaLSP) 
FROM 
    SanPham
JOIN 
    LoaiSP ON SanPham.MaLSP=LoaiSP.MaLSP
GROUP BY 
    LoaiSP.MaLSP,
    LoaiSP.TenLSP;
SELECT MaSP, NgaySX, TenSP,TenLSP IDNhanVien FROM SanPham
JOIN 
    LoaiSP ON SanPham.MaLSP = LoaiSP.MaLSP
SELECT MaSP, NgaySX, TenSP,TenLSP IDNhanVien FROM SanPham
JOIN 
    LoaiSP ON SanPham.MaLSP = LoaiSP.MaLSP
JOIN 
    NhanVien ON SanPham.IDNhanVien = NhanVien.IDNhanVien    
/* 7 */
UPDATE SanPham
SET NgaySX = '2024-07-26';
ALTER TABLE NhanVien
ADD NgaySinh DATETIME;
ALTER TABLE NhanVien
ADD CONSTRAINTS NgaySinh PRIMARY KEY(NhanVien)
ALTER TABLE SanPham
ADD NgaySinh DATETIME,
ADD CONSTRAINT fk_NgaySinh FOREIGN KEY(NgaySinh) REFERENCES NhanVien(NgaySinh)



