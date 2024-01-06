INSERT INTO customer (fullname, phone)
VALUES
    ('Rachel', 1111111111);


UPDATE customer
SET points=points+1
WHERE id = 1;

INSERT INTO coffeeorder(customerid, redeemed)
VALUES
(1,0);

INSERT INTO customer (fullname, phone, email)
VALUES
('Monica', 2222222222,'monica@friends.show'),
('Phoebe', 3333333333,'phoebe@friends.show');


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



SELECT points FROM customer
WHERE id = 2;

SELECT points FROM customer
WHERE id = 1;
INSERT into coffeeorder(customerid, redeemed)
VALUES
(1,1);
UPDATE customer
SET points=points-10
WHERE id = 1;

INSERT INTO customer (fullname, email)
VALUES
('Joey', 'joey@friends.show'),
('Chandler', 'chandler@friends.show'),
('Ross', 'ross@friends.show');


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

INSERT INTO coffeeorder(customerid, redeemed)
VALUES
(2,0),
(2,0),
(2,0);

UPDATE customer
SET points=points+3
WHERE id = 2;


SELECT points FROM customer WHERE id=3;
INSERT INTO coffeeorder(customerid,redeemed) VALUES (3,0);
UPDATE customer SET points=points+1 WHERE id=3;


DELETE FROM coffeeorder WHERE orderid=(SELECT MAX(orderid) FROM coffeeorder WHERE customerid=6);
DELETE FROM coffeeorder WHERE orderid=(SELECT MAX(orderid) FROM coffeeorder WHERE customerid=6);
UPDATE customer set points = points-2 WHERE id=6;

INSERT INTO coffeeorder(customerid, redeemed)
VALUES
(4,0),
(4,0);
UPDATE customer SET points=points+2 where id=4;

SELECT points FROM customer WHERE id=2;
INSERT INTO coffeeorder (customerid, redeemed) VALUES (2,1);
UPDATE customer SET points=points-10 WHERE id=2;

DELETE FROM customer WHERE id=5;

SELECT points FROM customer WHERE id=6;
INSERT INTO coffeeorder (customerid, redeemed) VALUES (6,0);
UPDATE customer SET points=points+1 WHERE id=6;


SELECT points FROM customer WHERE id=4;
INSERT INTO coffeeorder (customerid, redeemed) VALUES (4,0);
UPDATE customer SET points=points+1 WHERE id=4;


UPDATE customer SET email='p_as_in_phoebe@friends.show' WHERE id=3;
