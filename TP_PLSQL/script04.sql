--  script 04
-- ecrire un script qui recopie les employe affectés à un vol dans la table EMPLOYE_VOL
-- en utilisant un curseur
-- la table EMPLOYE_VOL est identique à la table EMPLOY sans les contraintes FK
--

DECLARE
-- on utilise distinct pour etre sur de ne récupérer qu'une seule fois l'information concernant les employes
--
cursor C_emp 
IS
select distinct e.id_emp, nom, salaire, emploi, emp_id_emp
from employe e, est_equipage eq
where eq.id_emp = e.id_emp ;

v_id_emp     employe.id_emp%type ;
v_nom        employe.nom%type ;
v_salaire    employe.salaire%type ;
v_emploi     employe.emploi%type ;
v_emp_id_emp employe.emp_id_emp%type ;

BEGIN
open c_emp;

loop
   fetch c_emp into v_id_emp, v_nom, v_salaire, v_emploi, v_emp_id_emp ;
   exit when c_emp%notfound ;
   insert into employe_vol 
        values (v_id_emp, v_nom, v_salaire, v_emploi, v_emp_id_emp) ;
end loop;
close c_emp ;
commit ;

END;
/