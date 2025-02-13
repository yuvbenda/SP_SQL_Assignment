CREATE TABLE purchases (
    PlayerID int,
    InvoiceID varchar(10),
    ProductID char(1),
    Date DATE,
    Revenue decimal(17,2)
);

INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (1, 1234551, 'A', '2023-01-01', 300);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (1, 1234552, 'A', '2022-01-02', 300);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (2, 1234553, 'B', '2023-01-03', 500);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (3, 1234554, 'C', '2023-01-04', 400);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (4, 1234555, 'A', '2022-01-05', 300);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (4, 1234555, 'B', '2022-01-05', 500);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (3, 1234554, 'C', '2023-01-04', 400);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (3, 1234556, 'A', '2023-01-08', 300);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (3, 1234556, 'B', '2023-01-08', 500);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (2, 1234553, 'A', '2023-01-03', 300);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (3, 1234557, 'C', '2023-01-11', 400);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (4, 1234561, 'D', '2023-01-12', 1200);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (5, 1234565, 'S', '2023-01-13', 1800);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (6, 1234569, 'A', '2023-01-14', 300);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (7, 1234573, 'B', '2023-01-15', 500);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (8, 1234577, 'C', '2023-01-16', 400);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (9, 1234581, 'A', '2023-01-17', 300);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (10, 1234585, 'C', '2023-01-18', 400);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (11, 1234589, 'B', '2022-01-19', 500);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (12, 1234593, 'C', '2023-01-20', 400);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (13, 1234597, 'D', '2023-01-21', 1200);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (14, 1234601, 'G', '2023-01-22', 700);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (15, 1234605, 'A', '2023-02-23', 300);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (16, 1234609, 'D', '2022-02-24', 1200);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (17, 1234613, 'A', '2023-02-25', 300);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (18, 1234617, 'C', '2023-02-26', 400);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (19, 1234621, 'D', '2023-02-27', 1200);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (20, 1234625, 'A', '2022-03-28', 300);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (21, 1234629, 'C', '2023-03-29', 400);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (22, 1234633, 'D', '2023-03-30', 1200);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (23, 1234637, 'B', '2023-03-31', 500);
INSERT INTO purchases (PlayerID, InvoiceID, ProductID, Date, Revenue) VALUES (24, 1234641, 'C', '2023-04-01', 400);