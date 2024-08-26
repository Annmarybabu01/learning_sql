--CREATE DATABASE learning;
--CREATE TABLE studentdetail (
--	id	INT PRIMARY KEY,
--	student_name varchar(255) NOT NULL,
--	student_age INT NOT NULL
--);
--CREATE TABLE marklist(
--	student_id INT PRIMARY KEY,
--	maths INT NOT NULL,
--	science INT NOT NULL,
--	english INT NOT NULL
--);
--INSERT INTO studentdetail (id,student_name,student_age) 
--VALUES 
--	(1,'ann',6),
--	(2,'hana',5),
--	(3,'joseph',7),
--	(4,'chinchu',5);
--INSERT INTO marklist (student_id,maths,science,english)
--VALUES
--	(1,12,45,56),
--	(3,54,78,65),
--	(4,90,98,43),
--	(5,60,69,78)
--;
--SELECT id,student_name,student_age FROM studentdetail;
--SELECT student_id,maths,science,english FROM marklist;
--SELECT id,student_age FROM studentdetail WHERE student_name='ann';
--SELECT student_name FROM studentDetail WHERE student_age>6;
--SELECT DISTINCT(student_age) FROM studentdetail;
--SELECT maths FROM marklist ORDER BY maths ASC;
--SELECT maths FROM marklist ORDER BY maths DESC;
--SELECT maths,science FROM marklist ORDER BY maths ASC,science DESC;
--SELECT student_name,student_age FROM studentdetail WHERE student_age=6 AND student_age=7;
--SELECT student_name,student_age FROM studentdetail WHERE student_age=6 OR student_age=7;
--SELECT student_name FROM studentdetail WHERE student_age=6 AND(student_name LIKE 'a%' OR student_name LIKE 'c%');
--SELECT student_name FROM studentdetail WHERE NOT student_age=7;
--SELECT student_name FROM studentdetail WHERE student_age IS NOT NULL;
--SELECT student_name FROM studentdetail WHERE student_age IS NULL;
--UPDATE studentdetail SET student_age=4 WHERE student_name='hana';
--SELECT id,student_name,student_age FROM studentdetail;
--DELETE studentdetail WHERE student_name='hana';
--SELECT id,student_name,student_age FROM studentdetail;
--SELECT TOP 2 * FROM studentdetail;
--SELECT max(maths) FROM marklist;
--SELECT min(maths) FROM marklist;
--SELECT avg(maths) FROM marklist;
--SELECT sum(maths) FROM marklist;
--SELECT count(student_id) FROM marklist;
--SELECT student_id ,maths FROM marklist WHERE maths IN (12,90);
--SELECT student_id ,maths FROM marklist WHERE maths BETWEEN 12 AND 90;
--SELECT id,student_name,student_age,maths,science,english 
--FROM studentdetail
--INNER JOIN marklist 
--ON studentdetail.id=marklist.student_id;
--SELECT id,student_name,student_age,maths,science,english 
--FROM studentdetail
--left JOIN marklist 
--ON studentdetail.id=marklist.student_id;
--SELECT id,student_name,student_age,maths,science,english 
--FROM studentdetail
--RIGHT JOIN marklist 
--ON studentdetail.id=marklist.student_id;
--SELECT id,student_name,student_age,maths,science,english 
--FROM studentdetail
--FULL JOIN marklist 
--ON studentdetail.id=marklist.student_id;
--SELECT a.student_name,b.student_age
--FROM studentdetail a,studentdetail b
--WHERE a.id = b.id;
--SELECT maths+science+english as total FROM marklist WHERE student_id=1;
--SELECT maths*science*english as mul FROM marklist WHERE student_id=1;
--SELECT id FROM studentdetail UNION SELECT student_id FROM marklist;
--SELECT COUNT(maths) FROM marklist GROUP BY maths HAVING AVG(maths)>20;
--SELECT id FROM studentdetail WHERE EXISTS( SELECT student_id from marklist);
--ALTER TABLE studentdetail ADD address VARCHAR(290);
--ALTER TABLE studentdetail DROP COLUMN address;
--CREATE PROCEDURE selectProcedure
--AS 
--	BEGIN
--		SELECT id,student_name,student_age FROM studentdetail
--	END;
--GO
--EXEC selectProcedure;
--CREATE PROCEDURE InsertStudent
--	@p_student_id INT,
--    @p_student_name VARCHAR(255),
--    @p_student_age INT
--AS
--BEGIN
--    INSERT INTO studentdetail (id,student_name, student_age)
--    VALUES (@p_student_id,@p_student_name, @p_student_age);
--END;
--EXEC InsertStudent 6,'john',8;
EXEC selectProcedure;

