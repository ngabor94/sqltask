docker build -t my-mysql-image .
docker run -d --name my-mysql-container my-mysql-image

1. feladat:
SELECT partner, project, created FROM db__income WHERE partner = 25 ORDER BY created DESC limit 3;

2. feladat:
SELECT COUNT(project) FROM db__income where partner = 2 AND created >= '2020-01-01 00:00:00' AND created <= '2020-12-31 00:00:00';

3.feladat
SELECT db__partners.name, db__income.project, db__income.amount FROM db__income JOIN db__partners ON db__income.partner=db__partners.id ORDER BY db__income.amount DESC limit 10;

4.feladat
SELECT project, partner, approved FROM db__income WHERE approved IS NULL;

5. feladat
SELECT SUM(amount) FROM db__income WHERE approved IS NULL;

6. feladat
SELECT project FROM db__income WHERE created >='2022-01-01 00:00:00' AND approved IS NOT NULL AND project LIKE '%java';

7. feladat
SELECT db__partners.name AS company_name, COUNT(db__income.project) AS darab FROM db__partners INNER JOIN db__income ON db__partners.id = db__income.partner WHERE created >= '2022-01-01 00:00:00' AND created <= '2022-12-31 00:00:00' GROUP BY db__partners.name, db__income.partner ORDER BY db__income.partner ASC;

8. feladat
SELECT project FROM db__income WHERE created <='2022-01-01 00:00:00' AND project LIKE '%server%' AND project NOT LIKE '%observer%';

