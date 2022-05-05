	 -- # --  INNER JOIN  -- # --
		######################

/* -- INNER JOIN -- SINTAXA GENERALA
-- -------------------------------------------------
SELECT t1.c1, t1.c2, t2.c3, t2.c4, t3.c7, t3.c9[,...] 
	FROM t1 INNER JOIN t2 ON t1.c1 = t2.c4    SAU USING(c1) - daca c1 = c4 ca denumire
		INNER JOIN t3 ON t1.c2 = t3.c7
        [ ...						-- dupa fiecare tabela intrata in join avem conditia
        INNER JOIN tn]				-- daca numele coloanelor este identic USING(nume_coloana)
    WHERE conditii_suplimentare
*/ 


USE magazin;

SELECT * FROM produse INNER JOIN categorii ON 
	produse.idcat = categorii.id;		-- conditia de join
    

USE test;
-- obtineti prezenta din tabelele prezenta, sal_ech, salariati, echipa
SELECT angajati.nume, echipa.nume, data FROM
	angajati INNER JOIN sal_ech ON angajati.id = sal_ech.id_sal
			INNER JOIN echipa ON sal_ech.id_ech = echipa.id
            INNER JOIN prezenta ON sal_ech.id = prezenta.id_sal_ech;

-- obtineti prezenta pentru Ion Adam din tabelele prezenta, sal_ech, salariati, echipa
SELECT angajati.nume, echipa.nume, data FROM
	angajati INNER JOIN sal_ech ON angajati.id = sal_ech.id_sal
			INNER JOIN echipa ON sal_ech.id_ech = echipa.id
            INNER JOIN prezenta ON sal_ech.id = prezenta.id_sal_ech
	WHERE angajati.nume = 'Ion Adam';

USE orase;
-- obtineti toate localitatile din romania (admin_code diferit de sub)


-- obtineti toate localitatile din romania (admin_code diferit de sub) a caror denumire incepe cu "vii"


-- cate orase avem in Romania (admin_code diferit de sub)


-- cate localitati avem in fiecare judet din Romania (admin_code diferit de sub)


