
--A new customer joined the loyalty program with the following customer information
INSERT INTO customer (fullname, phone)
VALUES
    ('Rachel', 1111111111);

--Rachel purchases a coffee.
UPDATE customer
SET points=points+1
WHERE id = 1;

INSERT INTO coffeeorder(customerid, redeemed)
VALUES
(1,0);


--Two new customers joined the loyalty program
INSERT INTO customer (fullname, phone, email)
VALUES
('Monica', 2222222222,'monica@friends.show'),
('Phoebe', 3333333333,'phoebe@friends.show');

--Phoebe purchases three coffees
INSERT INTO coffeeorder(customerid, redeemed)
VALUES
(3,0);
UPDATE customer
SET points=points+1
WHERE id = 3;
INSERT INTO coffeeorder(customerid, redeemed)
VALUES
(3,0);
UPDATE customer
SET points=points+1
WHERE id = 3;
INSERT INTO coffeeorder(customerid, redeemed)
VALUES
(3,0);
UPDATE customer
SET points=points+1
WHERE id = 3;

--Rachel and Monica each purchase four coffees
INSERT INTO coffeeorder(customerid, redeemed)
VALUES
(1,0),
(1,0),
(1,0),
(1,0),
(2,0),
(2,0),
(2,0),
(2,0);
UPDATE customer
SET points=points+4
WHERE id = 1 OR id = 2;


--Monica wants to know her new point total
SELECT points FROM customer
WHERE id = 2;

--Rachel wants to check her total points. Redeem her points for a coffee if she has enough points. If she doesn't, she wants to purchase a coffee
SELECT points FROM customer
WHERE id = 1;
INSERT into coffeeorder(customerid, redeemed)
VALUES
(1,1);
UPDATE customer
SET points=points-10
WHERE id = 1;

--Three new customers joined the loyalty program with the following customer information
INSERT INTO customer (fullname, email)
VALUES
('Joey', 'joey@friends.show'),
('Chandler', 'chandler@friends.show'),
('Ross', 'ross@friends.show');

--Ross purchases six coffees
INSERT INTO coffeeorder(customerid, redeemed)
VALUES
(6,0),
(6,0),
(6,0),
(6,0),
(6,0),
(6,0);
UPDATE customer
SET points=points+6
WHERE id = 6;

--Monica purchases three coffees.
INSERT INTO coffeeorder(customerid, redeemed)
VALUES
(2,0),
(2,0),
(2,0);

UPDATE customer
SET points=points+3
WHERE id = 2;


--Phoebe wants to check her total points. Redeem her points for a coffee if she has enough points. If she doesn't, she wants to purchase a coffee
SELECT points FROM customer WHERE id=3;
INSERT INTO coffeeorder(customerid,redeemed) VALUES (3,0);
UPDATE customer SET points=points+1 WHERE id=3;


--Ross demands a refund for the last two coffees that he ordered.
DELETE FROM coffeeorder WHERE orderid=(SELECT MAX(orderid) FROM coffeeorder WHERE customerid=6);
DELETE FROM coffeeorder WHERE orderid=(SELECT MAX(orderid) FROM coffeeorder WHERE customerid=6);
UPDATE customer set points = points-2 WHERE id=6;


--Joey purchases two coffees.
INSERT INTO coffeeorder(customerid, redeemed)
VALUES
(4,0),
(4,0);
UPDATE customer SET points=points+2 where id=4;


--Monica wants to check her total points. Redeem/purchase
SELECT points FROM customer WHERE id=2;
INSERT INTO coffeeorder (customerid, redeemed) VALUES (2,1);
UPDATE customer SET points=points-10 WHERE id=2;

--Chandler wants to delete his loyalty program account
DELETE FROM customer WHERE id=5;

--Ross wants to check her total points. Redeem/purchase
SELECT points FROM customer WHERE id=6;
INSERT INTO coffeeorder (customerid, redeemed) VALUES (6,0);
UPDATE customer SET points=points+1 WHERE id=6;

--Joey wants to check her total points. Redeem/purchase
SELECT points FROM customer WHERE id=4;
INSERT INTO coffeeorder (customerid, redeemed) VALUES (4,0);
UPDATE customer SET points=points+1 WHERE id=4;

--Phoebe wants to change her email to p_as_in_phoebe@friends.show
UPDATE customer SET email='p_as_in_phoebe@friends.show' WHERE id=3;
