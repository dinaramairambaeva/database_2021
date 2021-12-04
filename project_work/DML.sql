
INSERT INTO product_types(product_type_name) VALUES ('soda');
INSERT INTO product_types(product_type_name) VALUES ('milk');
INSERT INTO product_types(product_type_name) VALUES ('bread');
INSERT INTO product_types(product_type_name) VALUES ('vegetables');
INSERT INTO product_types(product_type_name) VALUES ('souses');
INSERT INTO product_types(product_type_name) VALUES ('sweets');
select * from product_types pt;

INSERT INTO vendors(vendor_name) VALUES ('Raimbek-Bottlers');
INSERT INTO vendors(vendor_name) VALUES ('Ulker');
INSERT INTO vendors(vendor_name) VALUES ('P&G');
INSERT INTO vendors(vendor_name) VALUES ('Rakhat');
INSERT INTO vendors(vendor_name) VALUES ('U-Bauki');
delete from vendors where vendor_id =6;
select * from vendors v;

INSERT INTO brands(vendor_id,brand_name) VALUES (1,'Sut Ainalayin');
INSERT INTO brands(vendor_id,brand_name) VALUES (1,'Palma');
INSERT INTO brands(vendor_id,brand_name) VALUES (1,'Borjomi');
INSERT INTO brands(vendor_id,brand_name) VALUES (2,'Albeni');
INSERT INTO brands(vendor_id,brand_name) VALUES (2,'Ülker Pötibör Bisküvi');
INSERT INTO brands(vendor_id,brand_name) VALUES (2,'Bizim Ketchup');
INSERT INTO brands(vendor_id,brand_name) VALUES (2,'Bizim Mayo');
INSERT INTO brands(vendor_id,brand_name) VALUES (3,'Pampers');
INSERT INTO brands(vendor_id,brand_name) VALUES (3,'Gilette');
INSERT INTO brands(vendor_id,brand_name) VALUES (4,'Rakhat konfeti');
INSERT INTO brands(vendor_id,brand_name) VALUES (4,'Rakhat marmelad');
INSERT INTO brands(vendor_id,brand_name) VALUES (4,'Rakhat shokolad');
INSERT INTO brands(vendor_id,brand_name) VALUES (5,'Airan');
INSERT INTO brands(vendor_id,brand_name) VALUES (5,'Chernyi hleb');
INSERT INTO brands(vendor_id,brand_name) VALUES (5,'Beliy Hleb');
INSERT INTO brands(vendor_id,brand_name) VALUES (5,'Pomidor');
INSERT INTO brands(vendor_id,brand_name) VALUES (5,'Kartowka');
select * from brands b;

INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (5,1,'Ainalayin 2.5%','1L','tetra','123');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (5,1,'Ainalayin 3.2%','1L','tetra','1234');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (5,1,'Ainalayin 6%','1L','tetra','1233');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (5,1,'Ainalayin 1%','1L','tetra','12');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (5,1,'Ainalayin 8%','0.33L','zh_b','13');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (6,1,'Palma Yabloko','1L','tetra','1');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (6,1,'Palma Yabloko','2L','tetra','2');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (6,1,'Palma Granat','1L','tetra','3');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (6,1,'Palma Granat','1L','tetra','4');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (6,1,'Palma Granat','2L','tetra','5');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (6,1,'Palma Vishnya','2L','tetra','6');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (7,1,'Borjomi 0.33','0.33L','steklo','11');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (7,1,'Borjomi 0.5','0.5L','steklo','12');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (7,1,'Borjomi 0.5 p','0.5L','PET','13');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (7,1,'Borjomi 1','1L','PET','14');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (8,2,'Albeni kids','small','vorr','21');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (8,2,'Albeni med','medium','vorr','22');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (9,2,'Potibor smal','small','vorr','23');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (9,2,'Potibor biskuvi','small','vorr','24');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (10,2,'Bizim ketchup','1L','tetra','31');
INSERT INTO products(brand_id,product_type_id,product_name,product_size,product_packaging,product_upc) VALUES (10,2,'Bizim ketchup','0.5L','steklo','32');
select * from products p;

INSERT INTO stores(store_name,store_location,store_open_time,store_close_time) VALUES ('Gross Tolebi','Almaty','09:00:00','21:00:00');
INSERT INTO stores(store_name,store_location,store_open_time,store_close_time) VALUES ('Ramstore Gogol str.','Almaty','09:00:00','22:00:00');
INSERT INTO stores(store_name,store_location,store_open_time,store_close_time) VALUES ('Magnum Tolebi','Almaty','09:00:00','23:00:00');
INSERT INTO stores(store_name,store_location,store_open_time,store_close_time) VALUES ('Magnum Gogol','Almaty','09:00:00','23:00:00');
INSERT INTO stores(store_name,store_location,store_open_time,store_close_time) VALUES ('Magnum Vesnovka','Almaty','09:00:00','23:00:00');
INSERT INTO stores(store_name,store_location,store_open_time,store_close_time) VALUES ('Magnum 2','Nur-sultan','09:00:00','23:00:00');
INSERT INTO stores(store_name,store_location,store_open_time,store_close_time) VALUES ('Magnum 3','Nur-sultan','09:00:00','23:00:00');
INSERT INTO stores(store_name,store_location,store_open_time,store_close_time) VALUES ('Magnum 4','Nur-sultan','09:00:00','23:00:00');
INSERT INTO stores(store_name,store_location,store_open_time,store_close_time) VALUES ('Magnum 5','Nur-sultan','09:00:00','23:00:00');
INSERT INTO stores(store_name,store_location,store_open_time,store_close_time) VALUES ('Magnum 1','Shymkent','09:00:00','23:00:00');
INSERT INTO stores(store_name,store_location,store_open_time,store_close_time) VALUES ('Magnum 2','Atyrau','09:00:00','23:00:00');
update stores set store_location = 'Nur-Sultan' where store_id = 4;
select * from stores;

INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (10,500,1,2);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (15,40,2,2);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (44,125,3,2);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (54,111,4,2);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (44,125,6,2);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (1000,125,8,2);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (20,1000,11,2);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (50,15,19,2);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (90,80,15,2);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (10,50,5,3);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (159,4,7,3);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (90,125,8,3);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (90,117,9,3);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (44,15,16,3);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (110,125,15,3);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (20,100,14,3);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (50,15,20,3);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (43,760,1,4);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (55,500,5,4);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (1,34,7,4);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (50,78,8,4);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (80,90,13,4);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (50,60,10,4);
INSERT INTO warehouse(store_product_amount,store_product_price,product_id,store_id) VALUES (70,900,15,4);
select * from warehouse;

INSERT INTO customers(customer_info,customer_name,customer_surname,customer_age,customer_offline)
				VALUES ('asd@gmail.com','Vasya','Pupkin',20,4);
INSERT INTO customers(customer_info,customer_name,customer_surname,customer_age,customer_offline)
				VALUES ('xyz@gmail.com','Serik','Berikovich',50,10);
INSERT INTO customers(customer_info,customer_name,customer_surname,customer_age,customer_offline)
				VALUES ('asdfg@gmail.com','Berik','Serikovich',22,5);
INSERT INTO customers(customer_info,customer_name,customer_surname,customer_age,customer_offline)
				VALUES ('+7 700 000 00 00','Darek','Darekuly',25,8);
select * from customers;

INSERT INTO orders(customer_id,store_id) VALUES (1,1);
INSERT INTO orders(customer_id, store_id) values(4, 5);
SELECT
    floor(random() * (4-1+1) + 1)::int,
    floor(random() * (11-2+1) + 2) ::int
from generate_series(1, 1000) orders(i);
select * from orders;

INSERT INTO order_details(amount,order_id,product_id);
SELECT
    floor(random() * (200-1+1) + 1)::int,
    floor(random() * (500-1+1) + 1)::int,
    floor(random() * (21-1+1) + 1)::int
from generate_series(1, 10000) order_details(i);
select * from order_details;

ALTER TABLE order_details
ADD year_of_order VARCHAR(5) NULL;

select * from order_details o
inner join orders ord on o.order_id=ord.order_id
inner join stores s on s.store_id=ord.store_id
order by product_id;


---------------------------SELECT QUERIES-------------------------------------------
--1.What are the 20 top-selling products at each store?
select ranked_scores.* from (
SELECT s.store_name,s.store_location,p.product_name,w.store_product_price*o.amount as total,
  rank() OVER (PARTITION BY s.store_id order by w.store_product_price*o.amount desc)
  from stores s
inner join  warehouse w on s.store_id=w.store_id
inner join products p  on w.product_id=p.product_id
inner join order_details o on o.product_id=p.product_id
inner join orders ord on o.order_id=ord.order_id
)ranked_scores
where rank <=20;

--2.What are the 20 top-selling products at each state?
select ranked_scores.* from (
SELECT s.store_name,s.store_location,p.product_name,w.store_product_price*o.amount as total,
  rank() OVER (PARTITION BY s.store_location order by w.store_product_price*o.amount desc)
  from stores s
inner join  warehouse w on s.store_id=w.store_id
inner join products p  on w.product_id=p.product_id
inner join order_details o on o.product_id=p.product_id
inner join orders ord on o.order_id=ord.order_id
)ranked_scores
where rank <=20;

--3.What are the 5 stores with the most sales so far this year?
select s.store_id,s.store_name,SUM(w.store_product_price*o.amount),o.year_of_order from stores s
inner join  warehouse w on s.store_id=w.store_id
inner join products p  on w.product_id=p.product_id
inner join order_details o on o.product_id=p.product_id
inner join orders ord on o.order_id=ord.order_id
where date_part('year', to_date(o.year_of_order,'YYYY')) = date_part('year', CURRENT_DATE)
group by s.store_id,s.store_name,o.year_of_order
order by SUM(w.store_product_price*o.amount) desc
LIMIT 5;


--In how many stores does Palma Yabloko(7) outsell Borjomy 0.33(12)? (Or, a similar query for enterprises that don’t sell soda.)
select COUNT(o.product_id)
from stores s
inner join  warehouse w on s.store_id=w.store_id
inner join products p  on w.product_id=p.product_id
inner join order_details o on o.product_id=p.product_id
inner join orders ord on o.order_id=ord.order_id
where  o.product_id=7 or o.product_id=13
order by COUNT(o.product_id),
group by s.store_name;
