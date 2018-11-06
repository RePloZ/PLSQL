--  script 02
-- ecrire un script qui recopie les employe affectés à un vol dans la table EMPLOYE_VOL
-- sans utiliser de curseur
-- la table EMPLOYE_VOL est identique à la table EMPLOY sans les contraintes FK
--

DECLARE
v_id_emp     employe.id_emp%type ;
v_nom        employe.nom%type ;
v_salaire    employe.salaire%type ;
v_emploi     employe.emploi%type ;
v_emp_id_emp employe.emp_id_emp%type ;

BEGIN
v_id_emp := 1 ;

loop
 exit when v_id_emp = 5 ;

 IF v_id_emp = 1 OR v_id_emp = 3 OR v_id_emp = 4 then 

   select id_emp, nom, salaire, emploi, emp_id_emp
   into v_id_emp, v_nom, v_salaire, v_emploi, v_emp_id_emp
   from employe
   where id_emp =  v_id_emp  ;

   insert into employe_vol 
        values (v_id_emp, v_nom, v_salaire, v_emploi, v_emp_id_emp) ;

 end if ;

v_id_emp := v_id_emp + 1 ;

end loop;

commit ;

END;
/