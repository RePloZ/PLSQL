-- Afficher nom, emploi, salaire  de l'emploi qui a pour id "4"
set serveroutput on
 
DECLARE
v_nom EMPLOYE.NOM%TYPE -- DEFAULT NULL
v_salaire NUMBER(4) -- DEFAULT 0
v_emploi VARCHAR2(20) -- DEFAULT NULL

BEGIN
  SELECT NOM, SALAIRE, EMPLOI
  INTO v_nom, v_salaire v_emploi
  FROM EMPLOYE
  WHERE ID_EMP = 4

DBMS_OUTPUT.put_line ('Le salarié n°4 a pour nom ' || v_nom ||
                      ', son salaire est de ' || v_salaire ||
                      ' et il travail en tant que ' || v_emploi
                      );

END;
/
