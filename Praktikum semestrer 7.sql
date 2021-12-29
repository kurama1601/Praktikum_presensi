SELECT YEAR(tanggal) tahun,  MONTH(tanggal) bulan, karyawan_id, 
SUM(case when keterangan = 'HADIR' then 1 else 0 end) jumlah_hadir, 
SUM(case when keterangan = 'SAKIT' then 1 else 0 end) jumlah_sakit,  
SUM(case when keterangan = 'IZIN' then 1 else 0 end) jumlah_izin,  
SUM(case when keterangan = 'CUTI' then 1 else 0 end) jumlah_cuti,  
SUM(case when keterangan = 'AKHIR PEKAN' then 1 else 0 end) jumlah_akhir_pekan,  
SUM(case when keterangan = 'LIBUR NASIONAL' then 1 else 0 end) jumlah_libur_nasional, 
SUM(case when keterangan = 'TANPA KETERANGAN' then 1 else 0 end) jumlah_tanpa_keterangan, 
COUNT(*) total 
FROM `presensi` WHERE YEAR(tanggal) = 2020 AND 
MONTH(tanggal) = 11 GROUP BY tahun, bulan, karyawan_id 