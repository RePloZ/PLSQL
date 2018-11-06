--  script 02
-- ecrire un script qui recopie les employe affectés à un vol dans la table EMPLOYE_VOL
-- la table EMPLOYE_VOL est identique à la table EMPLOY sans les contraintes FK
--

-- ============================================================
--   Table : EMPLOYE_VOL copie de la table EMPLOY sans FK                                          
-- ============================================================
create table EMPLOYE_VOL
(
    ID_EMP       INTEGER                not null,
    NOM          VARCHAR2(30)           not null,
    SALAIRE      NUMBER(4)              not null,
    EMPLOI       VARCHAR2(20)           null    ,
    EMP_ID_EMP   INTEGER                null    ,
    constraint PK_EMPLOYE_VOL primary key (ID_EMP)
)
/


