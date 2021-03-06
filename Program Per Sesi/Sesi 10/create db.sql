CREATE TABLE COMPANY(
	ID INT PRIMARY KEY NOT NULL,
	NAME TEXT NOT NULL,
	AGE INT NOT NULL,
	ADDRESS CHAR(50),
	SALARY REAL
)



---------------------------------------------------



-- Table: public.gaji

-- DROP TABLE IF EXISTS public.gaji;

CREATE TABLE IF NOT EXISTS public.gaji
(
    id_gaji integer NOT NULL,
    id_pegawai integer,
    gaji bigint,
    tgl_gaji date,
    CONSTRAINT gaji_pkey PRIMARY KEY (id_gaji)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.gaji
    OWNER to postgres;



----------------------------------------



-- Table: public.menu

-- DROP TABLE IF EXISTS public.menu;

CREATE TABLE IF NOT EXISTS public.menu
(
    id_menu integer NOT NULL DEFAULT nextval('menu_id_menu_seq'::regclass),
    nama_menu character(50) COLLATE pg_catalog."default",
    jenis character(50) COLLATE pg_catalog."default",
    harga bigint,
    CONSTRAINT menu_pkey PRIMARY KEY (id_menu)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.menu
    OWNER to postgres;



-------------------------------------



-- Table: public.pembeli

-- DROP TABLE IF EXISTS public.pembeli;

CREATE TABLE IF NOT EXISTS public.pembeli
(
    id_pembeli integer NOT NULL DEFAULT nextval('pembeli_id_pembeli_seq'::regclass),
    nama_pembeli character(50) COLLATE pg_catalog."default",
    alamat character(30) COLLATE pg_catalog."default",
    jenis_kelamin gender,
    tgl_lahir date,
    status "Status",
    no_tlp numeric(15,0),
    pekerjaan character(15) COLLATE pg_catalog."default",
    CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pembeli
    OWNER to postgres;



-------------------------------------



-- Table: public.pegawai

-- DROP TABLE IF EXISTS public.pegawai;

CREATE TABLE IF NOT EXISTS public.pegawai
(
    id_pegawai integer NOT NULL DEFAULT nextval('pegawai_id_pegawai_seq'::regclass),
    nama_pegawai character(50) COLLATE pg_catalog."default",
    alamat character(30) COLLATE pg_catalog."default",
    jenis_kelamin gender,
    tgl_lahir date,
    status "Status",
    no_tlp numeric(15,0),
    jabatan character(20) COLLATE pg_catalog."default",
    CONSTRAINT pegawai_pkey PRIMARY KEY (id_pegawai)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pegawai
    OWNER to postgres;



---------------------------------



-- Table: public.transaksi

-- DROP TABLE IF EXISTS public.transaksi;

CREATE TABLE IF NOT EXISTS public.transaksi
(
    id_transaksi integer NOT NULL,
    id_pembeli integer,
    id_menu integer,
    id_pegawai integer,
    tgl_transaksi date,
    CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.transaksi
    OWNER to jampirojam;