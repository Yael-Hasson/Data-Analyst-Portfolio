--===================DE KindleA=======================
------ table to store CID list for Targeted group -------
DROP TABLE IF EXISTS Temp.EU_DE_KindleA_T;

CREATE TABLE Temp.EU_DE_KindleA_T
(
cid numeric(38,0) NULL encode zstd
);

GRANT ALL ON Temp.EU_DE_KindleA_T TO user_name;
commit;

COPY Temp.EU_DE_KindleA_T
FROM 's3://eu-device/KindleA_DE_Test.txt'
iam_role'arn:aws:iam::987654321098:role/RedshiftCopyUnload'
delimiter '\t'
IGNOREHEADER 1;
commit;

select count(*) from Temp.EU_DE_KindleA_T;

------ table to store CID list for Holdout group -------
DROP TABLE IF EXISTS Temp.EU_DE_KindleA_C;

CREATE TABLE Temp.EU_DE_KindleA_C
(
cid numeric(38,0) NULL encode zstd
);

GRANT ALL ON Temp.EU_DE_KindleA_C TO user_name;
commit;

COPY Temp.EU_DE_KindleA_C
FROM 's3://eu-device/KindleA_DE_Control.txt'
iam_role'arn:aws:iam::987654321098:role/RedshiftCopyUnload'
delimiter '\t'
IGNOREHEADER 1;
commit;

select count(*) from Temp.EU_DE_KindleA_C;

-----Final tables
select count(*) from Temp.EU_DE_KindleA_T;
select count(*) from Temp.EU_DE_KindleA_C;
