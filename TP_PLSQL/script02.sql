--  script 02
-- ecrire un script qui augmente le salaire de l'employe numéro 3 de 10%

set serveroutput on

DECLARE
v_nom       employe.nom%type ;
v_salaire   number(4);
v_emploi    varchar2(20) ;

BEGIN
update employe set salaire = salaire + (salaire * 0.10)
where id_emp = 3 ;

commit ;

select nom, salaire, emploi
into v_nom, v_salaire, v_emploi
from employe
where id_emp = 3 ;

DBMS_OUTPUT.Put_line ('l''employe N° 3 est :  ' || v_nom || ' -*- '
                                                || v_emploi || ' -*- '
                                                || v_salaire ) ;
END;
/