-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:21:48.528




-- tables
-- Table TBNhanVien
CREATE TABLE TBNhanVien (
    Ma_NV varchar(10)    NOT NULL ,
    Ten_NV varchar(50)    NOT NULL ,
    Ngay_Sinh date    NOT NULL ,
    Gioi_Tinh bool    NOT NULL ,
    Email varchar(50)    NOT NULL ,
    Muc_Luong int    NOT NULL ,
    Ma_Phong varchar(5)    NOT NULL ,
    CONSTRAINT TBNhanVien_pk PRIMARY KEY (Ma_NV)
);

-- Table TBPhongBan
CREATE TABLE TBPhongBan (
    Ma_Phong varchar(5)    NOT NULL ,
    Ten_Phong varchar(20)    NOT NULL ,
    CONSTRAINT TBPhongBan_pk PRIMARY KEY (Ma_Phong)
);





-- foreign keys
-- Reference:  TBNhanVien_TBPhongBan (table: TBNhanVien)


ALTER TABLE TBNhanVien ADD CONSTRAINT TBNhanVien_TBPhongBan FOREIGN KEY TBNhanVien_TBPhongBan (Ma_Phong)
    REFERENCES TBPhongBan (Ma_Phong);



-- End of file.

