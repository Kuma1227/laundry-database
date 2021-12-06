use laundry

create table pegawai
(
	idPegawai varchar (12) not null primary key,
	nama_Pegawai char (15) not null,
	alamat_pegawai varchar (50) not null
)

/*tabel relasi*/
create table pakaian
(
	id_pakaian int not null primary key,
	nama_pelanggan char (35) not null,
	jumlah_pakaian int not null,
	idPegawai varchar(12) not null constraint fkidPegawai references pegawai(idPegawai),
	id_pelanggan int not null constraint fkid_pelanggan references pelanggan(id_pelanggan),
	nomor_selesai int not null constraint fknomor_pelanggan references selesai(nomor_selesai)

)

create table pelanggan
(
	id_pelanggan int not null primary key,
	nama_pelanggan char (35) not null,
	stok_pakaian int not null,
	tanggal_terima varchar (30) not null
)

create table selesai
(
	nomor_selesai int not null primary key,
	id_pelanggan int not null ,
	tanggal_selesai varchar (20) not null
)

drop table pakaian