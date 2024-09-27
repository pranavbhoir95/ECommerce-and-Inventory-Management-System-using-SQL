-- creating a database
create database p_db;

-- using database to run 
use p_db;

-- create table in a database(product table name AS M_DATA)
create table PRODUCT (
	PRODUCT_ID INT PRIMARY KEY,
	PRODUCT_NAME VARCHAR(50),
	PRICE DECIMAL(10,2),
	STOCK_QUANTITY INT,
	CATEGORY_ID INT,
    FOREIGN KEY (CATEGORY_ID) references CATEGORIES (CATEGORY_ID),
	BRAND VARCHAR(10)
);
insert into PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRICE, STOCK_QUANTITY, CATEGORY_ID, BRAND) values 
(1, "RAM", 46404.77, 869, 101, "SUMSUNG"),
(2, "RAJU", 22775.74, 421, 102, "GOOGLE"),
(3, "REVA", 2611.6, 536, 103, "ADDIDAS"),
(4, "AKASH", 18333.09, 440, 104, "FILA"),
(5, "JOSEPH", 13771.5, 449, 105, "APPLE"),
(6, "ELESHA", 58322.92, 715, 106, "GOOGLE"),	
(7, "SUZZEN", 15231.63, 532, 107, "WILSON"),
(8, "CRISY", 49421.74, 799, 108, "PUMA"),
(9, "CHARLES", 31732.88, 137, 109, "NIKE"),
(10, "DANIEL", 85060.82, 174, 110, "WILSON"),
(11, "RAMU", 58940.37, 316, 111, "WILSON"),
(12, "SHAM", 80801.14, 124, 112, "PUMA"),
(13, "RAKESH", 62414.92, 359, 113, "SUMSUNG"),
(14, "SAGAR", 74335.02, 625, 114, "WILSON"),
(15, "AK", 51854.42, 435, 115, "FILA"),
(16, "REV", 83770.28, 169, 116, "PUMA"),
(17, "RK", 75432.12, 642, 117, "PUMA"),
(18, "TOM", 37419.53, 265, 118, "ADDIDAS"),
(19, "DIK", 45453.15, 183, 119, "GOOGLE"),
(20, "ALICE", 23051.67, 517, 220, "ADDIDAS"),
(21, "ROHAN", 80134.54, 268, 221, "APPLE"),
(22, "MUKESH", 98493.89, 774, 222, "SKECHERS"),
(23, "UMESH", 25214.06, 857, 223, "GOOGLE"),
(24, "AJIT", 91495.51, 879, 224, "SUMSUNG"),
(25, "RAJU", 96667.26, 701, 225, "SUMSUNG");

SELECT * FROM PRODUCT;

-- CREATE AN CATEGORIES TABLE 
create table CATEGORIES (
	CATEGORY_ID INT PRIMARY KEY,
	CATEGORY_NAME VARCHAR(50)
);
insert into CATEGORIES (CATEGORY_ID, CATEGORY_NAME) values 
(101, 'lprando0'),
(102, 'hpither1'),
(103, 'gickovic2'),
(104, 'mzmitrichenko3'),
(105, 'fyanov4'),
(106, 'ccawood5'),
(107, 'blemmanbie6'),
(108, 'lwardhaw7'),
(109, 'clittler8'),
(110, 'vfawdrey9'),
(111, 'atornsa'),
(112, 'rliepinsb'),
(113, 'rbergstrandc'),
(114, 'cdeakesd'),
(115, 'jroddye'),
(116, 'dabotsonf'),
(117, 'btalksg'),
(118, 'ssuddabyh'),
(119, 'cbrundalli'),
(220, 'theapj'),
(221, 'ldrabblek'),
(222, 'bgasquoinel'),
(223, 'ksuffm'),
(224, 'byendlen'),
(225, 'dsetterthwaito');

SELECT * FROM CATEGORIES;

-- CREATE A CUSTMOERS TABLE
create table CUSTOMER1 (
	customer_id INT PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100)
);
insert into CUSTOMER1 (customer_id, first_name, last_name, email) values 
(1, "Chery", "Chace", "cchace0@gmail.com"),
(2, "Joann", "McKinno", "jmckinnon1@1und1.de"),
(3, "Jordan", "Goldsbrough", "jgoldsbrough2@ustream.tv"),
(4, "Fred", "Asken", "fasken3@un.org"),
(5, "Inger", "Book", "ibook4@sciencedirect.com"),
(6, "Virginie", "Jehaes", "vjehaes5@wikimedia.org"),
(7, "Kinnie", "Domnin", "kdomnin6@shutterfly.com"),
(8, "Siward", "Embleton", "sembleton7@sitemeter.com"),
(9, "Lucy", "Brachell", "lbrachell8@princeton.edu"),
(10, "Willette", "Bigland", "wbigland9@chron.com"),
(11, "Ricoriki", "Durrington", "rdurringtona@springer.com"),
(12, "Philomena", "Beevor", "pbeevorb@bluehost.com"),
(13, "Justine", "Swait", "jswaitc@fda.gov"),
(14, "Johnna", "Hourahan", "jhourahand@upenn.edu"),
(15, "Meghan", "Bathersby", "mbathersbye@ca.gov"),
(16, "Cedric", "Bake", "cbakef@g.com"),
(17, "Nicolai", "Harle", "nharleg@technorati.com"),
(18, "Ricard", "Waddicor", "rwaddicorh@wikia.com"),
(19, "Gloriana", "McSparran", "gmcsparrani@ucoz.ru"),
(20, "Mendy", "Donahue", "mdonahuej@cloudflare.com"),
(21, "Vinita", "Turville", "vturvillek@ed.gov"),
(22, "Saunders", "Wardhaugh", "swardhaughl@archive.org"),
(23, "Tadio", "Yarranton", "tyarrantonm@instagram.com"),
(24, "Eliza", "Suddock", "esuddockn@furl.net"),
(25, "Zilvia", "Foxten", "zfoxteno@reference.com");

SELECT * FROM CUSTOMER1;

-- CREATE A ORDER TABLE
CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    CUSTOMER_ID int,
    FOREIGN KEY(customer_id) REFERENCES CUSTOMER1 (customer_id),
    order_date DATE
);
insert into ORDERS (orderid, customer_id, order_date) values 
(1, 1, "2022-10-14"),
(2, 2, "2021-06-29"),
(3, 3, "2023-10-25"),
(4, 4, "2023-09-14"),
(5, 5, "2022-06-18"),
(6, 6, "2021-03-24"),
(7, 7, "2022-02-08"),
(8, 8,  "2023-01-03"),
(9, 9, "2021-11-21"),
(10, 10, "2021-03-28"),
(11, 11, "2021-03-18"),
(12, 12, "2024-03-18"),
(13, 13, "2024-04-05"),
(14, 14, "2022-11-04"),
(15, 15, "2023-05-09"),
(16, 16, "2022-02-13"),
(17, 17, "2023-08-12"),
(18, 18, "2020-03-31"),
(19, 19, "2021-10-28"),
(20, 20, "2023-07-17"),
(21, 21, "2023-08-09"),
(22, 22, "2021-07-06"),
(23, 23, "2020-03-13"),
(24, 24, "2022-10-11"),
(25, 25, "2020-05-20");
 
SELECT * FROM ORDERS;

-- CREATING ORDERDETAILS TABLE
create table Order_Details (
	detail_id INT primary key,
	orderid INT,
	FOREIGN KEY(orderid) REFERENCES orders (orderid),
	product_id INT,
	FOREIGN KEY(product_id) REFERENCES product (product_id),
	quantity DECIMAL(6,2)
);
insert into Order_Details (detail_id, orderid, product_id, quantity) values 
(1, 1, 1, 911.61),
(2, 2, 2, 81.36),
(3, 3, 3, 3.3),
(4, 4, 4, 661.09),
(5, 5, 5, 834.84),
(6, 6, 6, 433.05),
(7, 7, 7, 534.46),
(8, 8, 8, 119.65),
(9, 9, 9, 695.44),
(10, 10, 10, 389.61),
(11, 11, 11, 582.88),
(12, 12, 12, 652.95),
 (13, 13, 13, 126.09),
(14, 14, 14, 209.18),
(15, 15, 15, 192.87),
(16, 16, 16, 832.02),
(17, 17, 17, 897.22),
(18, 18, 18, 796.07),
(19, 19, 19, 305.23),
(20, 20, 20, 864.52),
(21, 21, 21, 904.62),
(22, 22, 22, 442.44),
(23, 23, 23, 667.67),
(24, 24, 24, 59.96),
(25, 25, 25, 306.68);

SELECT * FROM ORDER_DETAILS;

-- CREATING REVIEWS TABLE IN A DATABASE
create table reviews (
	review_id INT,
	product_id INT,
    FOREIGN KEY(product_id) REFERENCES product (product_id),
	customer_id INT,
	FOREIGN KEY(customer_id) REFERENCES customer1 (customer_id),
	rating INT,
	reviewer_name VARCHAR(100),
	comments VARCHAR(100)
);
insert into reviews (review_id, product_id, customer_id, rating, reviewer_name, comments) values 
(1, 1, 1, 5, "Gretal Van Arsdall", "good"),
(2, 2, 2, 3, "Tiebout Kissack", "excellent"),
(3, 3, 3, 4, "Prudi Corness", "poor"),
(4, 4, 4, 2, "Shalna Culham", "very good"),
(5, 5, 5, 4, "Elvera Upston", "excellent"),
(6, 6, 6, 5, "Damaris MacCollom", "average"),
(7, 7, 7, 1, "Stanley Zamudio", "average"),
(8, 8, 8, 2, "Tildy Londer", "excellent"),
(9, 9, 9, 3, "Jecho Harty", "excellent"),
(10, 10, 10, 3, "Manda MacShirie", "average"),
(11, 11, 11, 3, "Chelsy Alman", "very good"),
(12, 12, 12, 4, "Abraham Philippson", "very good"),
(13, 13, 13, 2, "Courtenay Mickelwright", "average"),
(14, 14, 14, 5, "Emogene Brimson", "excellent"),
(15, 15, 15, 1, "Grange Vassay", "good"),
(16, 16, 16, 3, "Stacee Roder", "poor"),
(17, 17, 17, 1, "Adda Marven", "poor"),
(18, 18, 18, 4, "Conney Holtham", "poor"),
(19, 19, 19, 3, "Rochester Arnowicz", "very good"),
(20, 20, 20, 4, "Kleon Leas", "very good"),
(21, 21, 21, 4, "Fanechka Elington", "very good"),
(22, 22, 22, 2, "Prince Dewdney", "excellent"),
(23, 23, 23, 2, "Sandy Abbess", "poor"),
(24, 24, 24, 5, "Craig Burgen", "excellent"),
(25, 25, 25, 1, "Charlotte McColl", "excellent");

SELECT * FROM reviews;

-- creating a table as shipping
create table ship (
	shipping_id INT primary key,
	OrderID INT,
	FOREIGN KEY(OrderID) REFERENCES orders(OrderID),
	ship_date DATE,
	delivery_date DATE,
	recipient_name VARCHAR(50),
	shipping_method VARCHAR(9)
);
insert into ship (shipping_id, OrderID, ship_date, delivery_date, recipient_name, shipping_method) values 
(1, 1, "2022-11-09", "2022-04-10", "Trisha Gelly", "Standard"),
(2, 2, "2022-09-09", "2022-12-16", "Inna Pirie", "Express"),
(3, 3, "2023-01-15", "2022-08-07", "Kakalina Hartlebury", "Express"),
(4, 4, "2022-07-13", "2022-05-27", "Melba Waterson", "Overnight"),
(5, 5, "2022-02-19", "2022-08-15", "Sean Karp", "Express"),
(6, 6, "2022-03-19", "2022-12-20", "Kaine Swinford", "Express"),
(7, 7, "2022-07-07", "2022-11-13", "Nye Breen", "Overnight"),
(8, 8, "2022-01-06", "2022-11-11", "Angelica Bavridge", "Express"),
(9, 9, "2022-11-11", "2022-02-21", "Valera Graffin", "Express"),
(10, 10, "2022-10-29", "2022-02-06", "Warner Gatiss", "Standard"),
(11, 11, "2022-12-06", "2022-09-15", "Amelina Kelleher", "Standard"),
(12, 12, "2022-05-03", "2022-10-21", "Scarlet Pauly", "Standard"),
(13, 13, "2022-10-25", "2022-01-01", "Stanislaw Garnson", "Express"),
(14, 14, "2022-04-23", "2022-11-16", "Caron Kelby", "Standard"),
(15, 15, "2022-07-24", "2022-09-12", "Eberhard Yepiskov", "Express"),
(16, 16, "2022-02-06", "2022-02-22", "Demetris Bondley", "Express"),
(17, 17, "2022-07-15", "2022-04-15", "Arda Crumpe", "Standard"),
(18, 18, "2022-01-12", "2022-03-26", "Clementia Kier", "Express"),
(19, 19, "2023-01-30", "2022-01-28", "Shara MacAleese", "Overnight"),
(20, 20, "2022-09-06", "2022-10-30", "Farra Nasi", "Standard"),
(21, 21, "2022-11-15", "2022-06-08", "Sonnie Ryton", "Express"),
(22, 22, "2022-10-30", "2022-04-11", "Bell Faro", "Overnight"),
(23, 23, "2022-11-17", "2022-04-23", "Gladi Gosden", "Express"),
(24, 24, "2022-08-08", "2022-01-02", "Fianna Monday", "Express"),
(25, 25, "2022-07-02", "2022-01-26", "Vanya Kelberer", "Express");

SELECT * FROM SHIP;

-- creating a table as discounts
create table discounts (
	discount_id INT primary key,
	product_id INT,
	FOREIGN KEY (product_id) REFERENCES Product(product_id),
	discount_amount DECIMAL(6,2),
	discount_code VARCHAR(100)
);
insert into discounts (discount_id, product_id, discount_amount, discount_code) values 
(1, 1, 387.95, "SPECIAL30"),
(2, 2, 217.34, "SPECIAL30"),
(3, 3, 583.84, "DISCOUNT10"),
(4, 4, 449.73, "SPECIAL30"),
(5, 5, 980.3, "DISCOUNT10"),
(6, 6, 779.04, "DISCOUNT10"),
(7, 7, 393.19, "SPECIAL30"),
(8, 8, 760.73, "SAVE20"),
(9, 9, 913.07, "SPECIAL30"),
(10, 10, 827.33, "SAVE20"),
(11, 11, 684.02, "DISCOUNT10"),
(12, 12, 519.16, "SPECIAL30"),
(13, 13, 902.03, "DISCOUNT10"),
(14, 14, 64.3, "SPECIAL30"),
(15, 15, 994.09, "SAVE20"),
(16, 16, 483.27, "SPECIAL30"),
(17, 17, 618.25, "SAVE20"),
(18, 18, 840.4, "SPECIAL30"),
(19, 19, 869.45, "DISCOUNT10"),
(20, 20, 524.34, "SPECIAL30"),
(21, 21, 489.98, "DISCOUNT10"),
(22, 22, 342.64, "DISCOUNT10"),
(23, 23, 469.72, "SAVE20"),
(24, 24, 536.87, "DISCOUNT10"),
(25, 25, 554.09, "SAVE20");

select * from discounts;

-- creating a table as coupons
create table coupons (
	coupon_id INT primary key,
	discount_amount DECIMAL(4,2)
);
insert into coupons (coupon_id, discount_amount) values 
(1, 13.14),
(2, 25.67),
(3, 37.63),
(4, 45.47),
(5, 44.98),
(6, 43.91),
(7, 31.11),
(8, 23.67),
(9, 38.1),
(10, 46.5),
(11, 5.83),
(12, 36.0),
(13, 23.74),
(14, 21.11),
(15, 24.17),
(16, 24.79),
(17, 32.08),
(18, 26.18),
(19, 49.49),
(20, 7.06),
(21, 7.3),
(22, 29.44),
(23, 46.0),
(24, 45.39),
(25, 49.94);

SELECT * FROM COUPONS;

-- DATABASE STRUCTURE SYNTAX
SHOW DATABASES;

-- TABLE STRUCTURE SYNTAX/CURRENT TABLE STRUCTURE WE CAN VIEW
DESC PRODUCT;

-- HOW CAN WE CHANGE EXISTING TABLE STRUCTURE(ALTER)
ALTER TABLE PRODUCT
ADD PRODUCT_QUALITY VARCHAR(100);

-- TO SEE ALTER COMMAND OUTPUT
DESC PRODUCT;

-- DROPPING A SAME COLUMN WHICH IS BEEN ALTER
ALTER TABLE PRODUCT
DROP COLUMN PRODUCT_QUALITY;

-- HOW TO RENAME THE EXISTING TABLE
ALTER TABLE PRODUCT
CHANGE COLUMN PRODUCT_NAME PROD_NAME VARCHAR(100);

-- ORDER BY, WHERE CLAUSE & OPERATOR
SELECT RATING,REVIEWER_NAME,COMMENTS
FROM REVIEWS
WHERE RATING>3
ORDER BY REVIEWER_NAME ASC;

-- ATLEAST ONE PRODUCT WHO HAS PURCHASE
SELECT customer1.customer_id,customer1.first_name,COUNT(orders.orderID) as TOTAL_ORDERS 
FROM customer1
INNER JOIN orders ON customer1.customer_id = orders.customer_id 
GROUP BY customer1.customer_id HAVING COUNT(orders.orderID)>=1;

 -- LIKE OPERATORS INNER JOINS & GROUP BY (syntax)
SELECT customer1.customer_id,customer1.first_name,COUNT(orders.orderID)as TOTAL
FROM customer1
INNER JOIN orders ON customer1.customer_id = orders.customer_id 
GROUP BY customer1.customer_id 
HAVING COUNT(orders.orderID) AND customer1.first_name LIKE "%A";

-- first name start from c (like operator)
SELECT customer1.customer_id,customer1.first_name,COUNT(orders.orderID)as TOTAL
FROM customer1
INNER JOIN orders ON customer1.customer_id = orders.customer_id 
GROUP BY customer1.customer_id 
HAVING COUNT(orders.orderID) AND customer1.first_name LIKE "C%";

-- LEFT JOINS
SELECT Ship.Recipient_Name, COUNT(Orders.OrderID) AS Num_Orders 
FROM Orders
LEFT JOIN Ship ON Orders.customer_id = Ship.Shipping_id
GROUP BY Recipient_Name;

-- lists of the employees "ajit" or "ak" or "akash" who have registered (or statement)
SELECT product.prod_name, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
INNER JOIN product ON Orders.OrderID = product.product_id)
where prod_name = "ajit" or prod_name = "ak" or prod_name = "akash"
GROUP BY product.prod_name
HAVING COUNT(Orders.OrderID);

-- Count of the country (aggregate)
SELECT BRAND, COUNT(*) AS CNT
FROM PRODUCT
GROUP BY BRAND
ORDER BY COUNT(*) DESC;

-- shipping_method asc (aggregate)
select recipient_name, count(*) as cnt
from ship
where recipient_name like "_a%"
group by recipient_name
having count(recipient_name)
order by count(recipient_name) asc;

-- 
select order_date, avg(num_order) as numbers from
(select customer_id, order_date, count(customer_id) as num_order
from orders
group by customer_id,order_date) sub
group by customer_id;

-- INNER JOIN (SYNTAX)
SELECT Orders.OrderID, Customer1.first_Name, Orders.Order_Date
FROM Orders
INNER JOIN Customer1 ON Orders.Customer_ID=Customer1.Customer_ID;

-- aggregate function
select brand, sum(price)as total
from product
group by brand
order by price desc;

-- joining 3 tables together
SELECT ORDERS.ORDERID, CUSTOMER1.FIRST_NAME,SHIP.RECIPIENT_NAME
FROM ORDERS
INNER JOIN CUSTOMER1 ON ORDERS.CUSTOMER_ID = CUSTOMER1.CUSTOMER_ID
JOIN SHIP ON ORDERS.CUSTOMER_ID = SHIP.SHIPPING_ID
GROUP BY ORDERS.ORDERID, CUSTOMER1.FIRST_NAME, SHIP.RECIPIENT_NAME
having orderid>15
order by FIRST_NAME,ORDERID,RECIPIENT_NAME asc;

-- DATE SYNTAX
SELECT ORDERS.ORDER_DATE,SHIP.SHIP_DATE,SHIP.DELIVERY_DATE
FROM ORDERS
JOIN SHIP ON ORDERS.ORDERID = SHIP.SHIPPING_ID
WHERE ORDERS.ORDER_DATE BETWEEN "2020-03-13" AND "2022-11-04" OR 
SHIP.DELIVERY_DATE NOT BETWEEN "2022-10-21" AND "2022-10-30"
GROUP BY ORDER_DATE,SHIP_DATE,DELIVERY_DATE
LIMIT 3;

-- COUNT OF MONTH (DATE_FORMAT)
SELECT DATE_FORMAT(ORDER_DATE, "%M" "%Y") AS ODR_DATE,COUNT(ORDERID)AS ORDR_CNT
FROM ORDERS
GROUP BY ORDER_DATE
HAVING MONTH(ORDER_DATE) > 04
ORDER BY ORDER_DATE DESC
LIMIT 4 OFFSET 4;

-- 5 PRODUCTS MAX AMOUNT DISCOUNT
SELECT BRAND, PROD_NAME, DISCOUNT_AMOUNT
FROM PRODUCT
JOIN DISCOUNTS ON PRODUCT.PRODUCT_ID = DISCOUNTS.DISCOUNT_ID
ORDER BY DISCOUNT_AMOUNT DESC
LIMIT 5 OFFSET 5;

-- TOP 6 BRAND WHO GAVE MAX ORDER
SELECT PRODUCT.BRAND,CATEGORIES.CATEGORY_NAME, SUM(ORDER_DETAILS.QUANTITY)AS QT
FROM CATEGORIES
JOIN PRODUCT ON CATEGORIES.CATEGORY_ID = PRODUCT.CATEGORY_ID
JOIN ORDER_DETAILS ON PRODUCT.PRODUCT_ID = ORDER_DETAILS.PRODUCT_ID
GROUP BY CATEGORIES.CATEGORY_NAME
ORDER BY QT DESC
LIMIT 6;

-- ORDER DATE (MONTH FORMAT)
SELECT CUSTOMER1.FIRST_NAME,ORDERS.ORDER_DATE
FROM ORDERS
RIGHT JOIN CUSTOMER1 ON ORDERS.CUSTOMER_ID = CUSTOMER1.CUSTOMER_ID
RIGHT JOIN SHIP ON ORDERS.ORDERID = SHIP.ORDERID
WHERE MONTH(ORDERS.ORDER_DATE) BETWEEN 3 AND 10
LIMIT 5 OFFSET 5;

-- MONTH FORMAT (APRIL - AUGUST)
SELECT DATE_FORMAT(ORDER_DATE, "%d"'-'"%M"'-'"%Y") AS OR_DATE,PROD_NAME,PRICE
FROM ORDERS
JOIN ORDER_DETAILS ON ORDERS.ORDERID = ORDER_DETAILS.ORDERID
JOIN PRODUCT ON PRODUCT.PRODUCT_ID = ORDER_DETAILS.PRODUCT_ID
WHERE MONTH(ORDER_DATE) BETWEEN "04" AND "08"
ORDER BY PROD_NAME ASC
LIMIT 4;