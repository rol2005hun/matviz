-- ennek csak 7 feladat latszodik
--1. feladat
select ugyfel_id, vezeteknev, keresztnev, megrendeles_id from hajo.s_ugyfel
left join hajo.s_megrendeles on ugyfel = ugyfel_id
order by vezeteknev, keresztnev, megrendeles_id

--2. feladat
select * from hajo.s_megrendeles
join hajo.s_ugyfel on ugyfel = ugyfel_id
where keresztnev = 'Yiorgos' and fizetett_osszeg > 2000000
    and megrendeles_id not in (
        select megrendeles from hajo.s_szallit
    )
--3. feladat
select nev, count(*) from hajo.s_hajo
join hajo.s_ut on hajo_id = hajo
group by nev
order by count(*) desc
fetch first 3 rows only

--4. feladat
