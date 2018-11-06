-- pas d'affichage � l'�cran (plus rapide)
SET TERMOUT OFF
-- mais echo des requ�tes dans SQL*Plus pour le journal
SET ECHO ON
-- journal de la cr�ation
SPOOL InstallerAvion.log

-- connexion en tant que SYSTEM
CONNECT system/orcl

-- CREATION DU ROLE ROLSTAGE (SQL + PL)
drop ROLE  rolstage
/
create role rolstage
/
grant connect  to rolstage
/
grant resource to rolstage
/

-- cr�ation du compte propri�taire de l'application
DROP USER charly  CASCADE
/
CREATE USER charly IDENTIFIED BY charly
DEFAULT TABLESPACE users
QUOTA UNLIMITED ON users
/

grant rolstage to charly
/

-- connexion en tant que charly pour creer l'application
CONNECT charly/charly

-- cr�ation des tables
@CreTablesAvion

@RempliAvion


-- ferme le journal de la cr�ation
SPOOL OFF

-- ouverture du journal avec NOTEPAD
HOST START NOTEPAD InstallerAvion.log

SET ECHO OFF
SET TERMOUT ON
EXIT

