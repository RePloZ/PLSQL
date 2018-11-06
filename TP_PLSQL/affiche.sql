
--
-- mon premier programme
--
set serveroutput on

DECLARE
message	varchar2(100) ;

BEGIN
message := 'Essai d''affichage';
DBMS_OUTPUT.put_line ('Test : ' || message);

END;
/
