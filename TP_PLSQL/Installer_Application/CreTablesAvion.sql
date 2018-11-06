-- ============================================================
--   Nom de la base   :  TAHITI                                
--   Nom de SGBD      :  ORACLE Version 8                      
--   Date de cr‚ation :  22/08/2010  17:09                     
-- ============================================================

drop index EST_AFFECTE_PK
/

drop index EST_EQUIPAGE_FK
/

drop index EQUIPAGE_FK
/

drop table EST_EQUIPAGE cascade constraints
/

drop index VOL_PK
/

drop index UTILISE_FK
/

drop table VOL cascade constraints
/

drop index AVION_PK
/

drop table AVION cascade constraints
/

drop index EMPLOYE_PK
/

drop index A_POUR_PATRON_FK
/

drop table EMPLOYE cascade constraints
/

-- ============================================================
--   Table : EMPLOYE                                           
-- ============================================================
create table EMPLOYE
(
    ID_EMP       INTEGER                not null,
    NOM          VARCHAR2(30)           not null,
    SALAIRE      NUMBER(4)              not null,
    EMPLOI       VARCHAR2(20)           null    ,
    EMP_ID_EMP   INTEGER                null    ,
    constraint PK_EMPLOYE primary key (ID_EMP)
)
/

-- ============================================================
--   Index : A_POUR_PATRON_FK                                  
-- ============================================================
create index A_POUR_PATRON_FK on EMPLOYE (EMP_ID_EMP asc)
/

-- ============================================================
--   Table : AVION                                             
-- ============================================================
create table AVION
(
    ID_AVION     INTEGER                not null,
    NOM_AVION    VARCHAR2(30)           null    ,
    constraint PK_AVION primary key (ID_AVION)
)
/

-- ============================================================
--   Table : VOL                                               
-- ============================================================
create table VOL
(
    NO_VOL       INTEGER                not null,
    VOL_DEPART   DATE                   not null,
    VOL_ARRIVE   DATE                       null,
    DESTINATION  CHAR(20)               not null,
    ID_AVION     INTEGER                not null,
    constraint PK_VOL primary key (NO_VOL)
)
/

-- ============================================================
--   Index : UTILISE_FK                                        
-- ============================================================
create index UTILISE_FK on VOL (ID_AVION asc)
/

-- ============================================================
--   Table : EST_EQUIPAGE                                      
-- ============================================================
create table EST_EQUIPAGE
(
    ID_EMP       INTEGER                not null,
    NO_VOL       INTEGER                not null,
    constraint PK_EST_EQUIPAGE primary key (ID_EMP, NO_VOL)
)
/

-- ============================================================
--   Index : EST_EQUIPAGE_FK                                   
-- ============================================================
create index EST_EQUIPAGE_FK on EST_EQUIPAGE (ID_EMP asc)
/

-- ============================================================
--   Index : EQUIPAGE_FK                                       
-- ============================================================
create index EQUIPAGE_FK on EST_EQUIPAGE (NO_VOL asc)
/

-- ============================================================
--   Index : CLES ETRANGERES                                       
-- ============================================================
alter table EMPLOYE
    add constraint FK_EMPLOYE_A_POUR_PA_EMPLOYE foreign key  (EMP_ID_EMP)
       references EMPLOYE (ID_EMP)
/

alter table VOL
    add constraint FK_VOL_UTILISE_AVION foreign key  (ID_AVION)
       references AVION (ID_AVION)
/

alter table EST_EQUIPAGE
    add constraint FK_EST_EQUI_EST_EQUIP_EMPLOYE foreign key  (ID_EMP)
       references EMPLOYE (ID_EMP)
/

alter table EST_EQUIPAGE
    add constraint FK_EST_EQUI_EQUIPAGE_VOL foreign key  (NO_VOL)
       references VOL (NO_VOL)
/

alter table EMPLOYE
  add CONSTRAINT EMPLOYE_SALAIRE_CC
  CHECK (salaire >100)
/
