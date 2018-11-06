
--
--Suppression des lignes des tables de la base eleve
--

DELETE FROM est_equipage;                                                      
DELETE FROM employe;                                                   
DELETE FROM vol;                                                    
DELETE FROM avion;        

--                                                                      
-- INSERTION LIGNES DANS BASE TAHITI
--                                                                      
--  
------------- INSERT Avion --------------------------                   
--                                                                      
INSERT INTO Avion VALUES                                                
(1,'Caravelle' ); 
INSERT INTO Avion VALUES                                                
(2,'Boïng' ); 
INSERT INTO Avion VALUES                                                
(3,'Planeur' );   
insert into avion values 
(4,'A_Caravelle_2');    
                                                               
------------- INSERT Vol --------------------------                   
--                                                                      
INSERT INTO VOL VALUES                                                
(1,sysdate,sysdate+1,'Tahiti',1 ); 
INSERT INTO VOL VALUES                                                
(2,NEXT_DAY(sysdate,'JEUDI'),NEXT_DAY(sysdate,'VENDREDI'),'Marquises',1 ); 
INSERT INTO VOL VALUES                                                
(3,LAST_DAY(sysdate),NULL ,'Tokio',2 ); 
                                                

------------- INSERT Employe --------------------------                   
--                                                                      
INSERT INTO Employe VALUES                                                
(1,'Gaston',1700,'Directeur',null); 
INSERT INTO Employe VALUES                                                
(2,'Spirou',2000,'Pilote',1 ); 
INSERT INTO Employe VALUES                                                
(3,'Titeuf',1800,'Stiwart',2 ); 
INSERT INTO Employe VALUES                                                
(4,'Mariline',2000,'Hotesse de l''Air',1 ); 

------------- INSERT Est_Equipage --------------------------                   
--                                                                      
INSERT INTO Est_Equipage VALUES                                                
(1,1);    
INSERT INTO Est_Equipage VALUES                                                
(4,1);  
INSERT INTO Est_Equipage VALUES                                                
(3,2);  
INSERT INTO Est_Equipage VALUES                                                
(4,2);    
                                
--
--
commit;



