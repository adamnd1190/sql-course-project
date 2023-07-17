INSERT INTO branch VALUES (1, 'Ibn Gvirol', 20, 'Tel Aviv', 0600, 2200,50,'03-5126673');

INSERT INTO areas VALUES (20, 1, 'aerobic training');
INSERT INTO areas VALUES (21, 1,'weight exercises');
INSERT INTO areas VALUES (22, 1,'weight exercises');
INSERT INTO areas VALUES (23, 1,'classes');

INSERT INTO Registration_Packages VALUES (30, 300, 1);
INSERT INTO Registration_Packages VALUES (31, 550, 3);
INSERT INTO Registration_Packages VALUES (32, 1000, 6);
INSERT INTO Registration_Packages VALUES (33, 1800, 12);

INSERT INTO Manufacturers VALUES ('Bashgal', 'Ben gurion',2, 'Tel Aviv', '054-3344859');
INSERT INTO Manufacturers VALUES ('Gymi', 'Havradim',4, 'Ramat-Gan', '054-8926655');
INSERT INTO Manufacturers VALUES ('Urbanix', 'Moshe Dayan',7,'Hertzelia', '052-3625989');
INSERT INTO Manufacturers VALUES ('Champions', 'Rotchild', 42, 'Tel Aviv', '050-8795612');
INSERT INTO Manufacturers VALUES ('Glory', 'Harakefet', 28, 'Givataim', '052-2211456');
INSERT INTO Manufacturers VALUES ('Strong', 'Calanit', 19, 'Or Yehuda', '057-8974563');

INSERT INTO EMPLOYEES VALUES (167843,'Gal','Erez',19900901,'Manager','Zamenhoff',1,'Tel aviv','052-28434638',12000,6,1);
INSERT INTO EMPLOYEES VALUES (285654,'Kim','Azuz',19910204,'Trainer','Bazel',8,'Tel aviv','054-3678999',10000,5,1);
INSERT INTO EMPLOYEES VALUES (325612,'Daniel','Amar',19920204,'Trainer','Bazel',12,'Tel aviv','054-3678345',4000,1,1);
INSERT INTO EMPLOYEES VALUES (455654,'Shmuel','Aviv',19940504,'Trainer','Remez',30,'Tel aviv','054-3613499',8000,3,1);
INSERT INTO EMPLOYEES VALUES (523456,'Ben','Cohen',19960401,'Trainer','Tagor',20,'Tel aviv','050-8886566',6000,2,1);
INSERT INTO EMPLOYEES VALUES (623654,'Dan','Levi',19930502,'Trainer','Vinik',23,'Tel aviv','052-1322122',8000,3,1);
INSERT INTO EMPLOYEES VALUES (721654,'Noa','Gold',19970811,'Trainer','Herzl',16,'Tel aviv','054-5660090',4000,1,1);
INSERT INTO EMPLOYEES VALUES (898854,'Inbal','Sharan',19950314,'Trainer','Shaham',36,'Tel aviv','054-367866',9000,4,1);
INSERT INTO EMPLOYEES VALUES (921654,'Sarah','Atias',19950211,'Trainer','Halil',35,'Tel aviv','052-3340090',4000,1,1);
INSERT INTO EMPLOYEES VALUES (264723,'Mihal','Kadosh',19920805,'Receptionist','Drobin',4,'Tel aviv','052-8886597',10000,5,1);
INSERT INTO EMPLOYEES VALUES (568906,'Guy','Morad',19940909,'Receptionist','Remez',12,'Tel aviv','054-3334355',6000,2,1);
INSERT INTO EMPLOYEES VALUES (135786,'Michael','Bashan',19980701,'Maintenance','Brazil',14,'Tel aviv','050-9988111',7000,5,1);
INSERT INTO EMPLOYEES VALUES (843289,'Moshe','Mizrahi',19880701,'Maintenance','Brazil',16,'Tel aviv','052-1119399',5000,3,1);

INSERT INTO trainers VALUES (285654,20,'aerobic trainer');
INSERT INTO trainers VALUES (325612,20,'spinning trainer');
INSERT INTO trainers VALUES (455654,21,'powerlifting trainer');
INSERT INTO trainers VALUES (523456,21,'bodybuilding trainer');
INSERT INTO trainers VALUES (623654,22,'bodybuilding trainer');
INSERT INTO trainers VALUES (721654,22,'powerlifting trainer');
INSERT INTO trainers VALUES (898854,23,'Yoga trainer');
INSERT INTO trainers VALUES (921654,23,'pilates trainer');

INSERT INTO shifts VALUES (285654,20200901,0600,1400);
INSERT INTO shifts VALUES (325612,20200901,1400,2200);
INSERT INTO shifts VALUES (921654,20200901,0600,1400);
INSERT INTO shifts VALUES (898854,20200901,1400,2200);
INSERT INTO shifts VALUES (325612,20200902,0600,1400);
INSERT INTO shifts VALUES (285654,20200902,1400,2200);
INSERT INTO shifts VALUES (285654,20200903,1400,2200);
INSERT INTO shifts VALUES (285654,20200904,1400,2200);

INSERT INTO members VALUES (201447533, 'Avi', 'Katz', 'Shlomo Hamelech', 10, 'Tel Aviv', 19900420,'052-8435689', 20210302,30,1);
INSERT INTO members VALUES (311048525, 'Keren', 'Shalom', 'Weizman', 63, 'Tel Aviv', 19950720,'052-5434534', 20210605,31,1);
INSERT INTO members VALUES (211245649, 'David', 'Ben Hemo', 'Ygal Alon', 20, 'Tel Aviv', 19930501,'054-2221111', 20210102,32,1);
INSERT INTO members VALUES (314358293, 'Jimmy', 'Morrison', 'Allenby', 72, 'Tel Aviv', 19980803,'050-9878742',20211221,33,1);
INSERT INTO members VALUES (234789235, 'Dana', 'Sinai', 'Harav Kook', 3, 'Tel Aviv', 19920611,'054-3675809', 20210205,30,1);
INSERT INTO members VALUES (342785532, 'Alona', 'Shamir', 'Yavne', 15, 'Tel Aviv', 20001006,'054-3675869', 20210303,30,1);
INSERT INTO members VALUES (298675734, 'Alon', 'Harari', 'Ibn Gvirol', 55, 'Tel Aviv', 19901212,'054-3675861', 20210910,30,0);
INSERT INTO members VALUES (283497564, 'Yana', 'Levy', 'Zeitlin', 5, 'Tel Aviv', 19930512,'052-3645869', 20210205,31,0);
INSERT INTO members VALUES (348792385, 'Hen', 'Aharon', 'Ibn Gvirol', 70, 'Tel Aviv', 19920425,'054-3375899',20201205,31,0);
INSERT INTO members VALUES (223890475, 'Ben', 'Kohavi', 'Bezalel', 11, 'Tel Aviv', 20011004,'054-3675123', 20210401,32,1);

INSERT INTO Freeze_Subscription VALUES (201447533,20200101,20200115);
INSERT INTO Freeze_Subscription VALUES (311048525,20200201,20200215);
INSERT INTO Freeze_Subscription VALUES (311048525,20200901,20200915);
INSERT INTO Freeze_Subscription VALUES (348792385,20201001,20201015);
INSERT INTO Freeze_Subscription VALUES (298675734,20201001,20201010);
INSERT INTO Freeze_Subscription VALUES (283497564,20200929,20201005);
INSERT INTO Freeze_Subscription VALUES (223890475,20201010,20201025);

INSERT INTO Member_attendance VALUES (201447533,20201001,1000,20);
INSERT INTO Member_attendance VALUES (201447533,20201002,1000,21);
INSERT INTO Member_attendance VALUES (201447533,20201003,1000,23);
INSERT INTO Member_attendance VALUES (201447533,20201004,1900,20);
INSERT INTO Member_attendance VALUES (234789235,20201001,1900,22);
INSERT INTO Member_attendance VALUES (234789235,20201002,1900,22);
INSERT INTO Member_attendance VALUES (234789235,20201004,1900,22);
INSERT INTO Member_attendance VALUES (234789235,20201005,1900,22);
INSERT INTO Member_attendance VALUES (342785532,20201001,1800,20);
INSERT INTO Member_attendance VALUES (342785532,20201002,1200,21);
INSERT INTO Member_attendance VALUES (342785532,20201004,1800,23);
INSERT INTO Member_attendance VALUES (314358293,20201006,1000,23);
INSERT INTO Member_attendance VALUES (314358293,20201007,1000,20);
INSERT INTO Member_attendance VALUES (201447533,20201007,1000,20);


INSERT INTO Equipment_in_gym VALUES (60,'Treadmills','Bashgal', 20140201,135786,20200101,20,1);
INSERT INTO Equipment_in_gym VALUES (61,'SKILLBIKE', 'Glory', 20180508,843289,20200101,21,1);  
INSERT INTO Equipment_in_gym VALUES (62,'URETHANE_DUMBBELL', 'Strong', 20160410,843289,20200101,22,1);  
INSERT INTO Equipment_in_gym VALUES (63,'UNICA', 'Urbanix', 20170412,843289,20200101,23,1);  
INSERT INTO Equipment_in_gym VALUES (64,'Treadmills','Bashgal', 20190518,843289,20200601,20,1);  
INSERT INTO Equipment_in_gym VALUES (65,'SKILLBIKE', 'Glory',20190514,843289,20200601,21,1);  
INSERT INTO Equipment_in_gym VALUES (66,'URETHANE_DUMBBELL', 'Strong',20170410,843289,20200601,22,1);  
INSERT INTO Equipment_in_gym VALUES (67,'UNICA', 'Urbanix', 20140518,135786,20200601,23,0);  
INSERT INTO Equipment_in_gym VALUES (68,'Treadmills','Bashgal', 20150816,135786,20200301,20,0);  
INSERT INTO Equipment_in_gym VALUES (69,'SKILLBIKE', 'Glory', 20160617,135786,20200301,21,0);  
INSERT INTO Equipment_in_gym VALUES (600,'URETHANE_DUMBBELL', 'Strong',20170619,135786,20200301,22,0);   
INSERT INTO Equipment_in_gym VALUES (601,'UNICA', 'Urbanix', 20170720,843289,20200301,23,0);
INSERT INTO Equipment_in_gym VALUES (602,'Treadmills','Bashgal',20150920,843289,20200101,20,1);    
INSERT INTO Equipment_in_gym VALUES (603,'SKILLBIKE', 'Glory',20160617,843289,20200101,21,1);  
INSERT INTO Equipment_in_gym VALUES (604,'URETHANE_DUMBBELL', 'Strong',20170619,135786,20200101,22,1);   
INSERT INTO Equipment_in_gym VALUES (605,'UNICA', 'Urbanix',20170720,135786,20200101,23,0);


INSERT INTO Order_equipment VALUES (70,'Bashgal','Treadmills',20201001,3000,2,20,167843);
INSERT INTO Order_equipment VALUES (71, 'Urbanix','UNICA',20201005,2000,1,23,167843);
INSERT INTO Order_equipment VALUES (72,'Glory','SKILLBIKE',20200501,4500,3,21,167843);
INSERT INTO Order_equipment VALUES (73,'Glory','SKILLBIKE',20200601,1500,1,21,167843);
INSERT INTO Order_equipment VALUES (74, 'Strong','URETHANE_DUMBBELL',20201003,1400,2,22,167843);
INSERT INTO Order_equipment VALUES (75,'Bashgal','Treadmills',20200305,1500,1,20,167843);

INSERT INTO Equipment_tracking VALUES (68,20,'electrical problem');
INSERT INTO Equipment_tracking VALUES (69,21,'torn chain');
INSERT INTO Equipment_tracking VALUES (600,22,'missing weight');
INSERT INTO Equipment_tracking VALUES (601,23,'missing weight');



