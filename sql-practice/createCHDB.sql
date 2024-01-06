DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS coffeeorder;


CREATE TABLE customer(
  id INTEGER PRIMARY KEY,
  fullname VARCHAR(63) NOT NULL,
  POINTS INTEGER NOT NULL,
  contact1 VARChAR(255),
  contact2 VARCHAr(255)

);

CREATE TABLE coffeeorder(
  orderid INTEGER PRIMARY KEY,
  customerid INTEGER NOT NULL,
  redeemed BOOLEAN,
  orderdate VARCHAR(63),
  price FLOAT,
  FOREIGN KEY (customerid) REFERENCES customer(id)
);
