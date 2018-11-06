--  script 01
-- afficher le nom, l'emploi et le salaire de l'employe numéro 3

set serveroutput on

DECLARE
v_nom       employe.nom%type ;
v_salaire   number(4);
v_emploi    varchar2(20) ;

BEGIN
select nom, salaire, emploi
into v_nom, v_salaire, v_emploi
from employe
where id_emp = 3 ;

DBMS_OUTPUT.Put_line ('l''employe N° 3 est :  ' || v_nom || ' -*- '
                                                || v_emploi || ' -*- '
                                                || v_salaire ) ;
END;
/