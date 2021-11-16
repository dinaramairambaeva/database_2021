create table dealer (
    id integer primary key ,
    name varchar(255),
    location varchar(255),
    charge float
);

INSERT INTO dealer (id, name, location, charge) VALUES (101, 'Ерлан', 'Алматы', 0.15);
INSERT INTO dealer (id, name, location, charge) VALUES (102, 'Жасмин', 'Караганда', 0.13);
INSERT INTO dealer (id, name, location, charge) VALUES (105, 'Азамат', 'Нур-Султан', 0.11);
INSERT INTO dealer (id, name, location, charge) VALUES (106, 'Канат', 'Караганда', 0.14);
INSERT INTO dealer (id, name, location, charge) VALUES (107, 'Евгений', 'Атырау', 0.13);
INSERT INTO dealer (id, name, location, charge) VALUES (103, 'Жулдыз', 'Актобе', 0.12);

create table client (
    id integer primary key ,
    name varchar(255),
    city varchar(255),
    priority integer,
    dealer_id integer references dealer(id)
);

INSERT INTO client (id, name, city, priority, dealer_id) VALUES (802, 'Айша', 'Алматы', 100, 101);
INSERT INTO client (id, name, city, priority, dealer_id) VALUES (807, 'Даулет', 'Алматы', 200, 101);
INSERT INTO client (id, name, city, priority, dealer_id) VALUES (805, 'Али', 'Кокшетау', 200, 102);
INSERT INTO client (id, name, city, priority, dealer_id) VALUES (808, 'Ильяс', 'Нур-Султан', 300, 102);
INSERT INTO client (id, name, city, priority, dealer_id) VALUES (804, 'Алия', 'Караганда', 300, 106);
INSERT INTO client (id, name, city, priority, dealer_id) VALUES (809, 'Саша', 'Шымкент', 100, 103);
INSERT INTO client (id, name, city, priority, dealer_id) VALUES (803, 'Маша', 'Семей', 200, 107);
INSERT INTO client (id, name, city, priority, dealer_id) VALUES (801, 'Максат', 'Нур-Султан', null, 105);

create table sell (
    id integer primary key,
    amount float,
    date timestamp,
    client_id integer references client(id),
    dealer_id integer references dealer(id)
);

INSERT INTO sell (id, amount, date, client_id, dealer_id) VALUES (201, 150.5, '2012-10-05 00:00:00.000000', 805, 102);
INSERT INTO sell (id, amount, date, client_id, dealer_id) VALUES (209, 270.65, '2012-09-10 00:00:00.000000', 801, 105);
INSERT INTO sell (id, amount, date, client_id, dealer_id) VALUES (202, 65.26, '2012-10-05 00:00:00.000000', 802, 101);
INSERT INTO sell (id, amount, date, client_id, dealer_id) VALUES (204, 110.5, '2012-08-17 00:00:00.000000', 809, 103);
INSERT INTO sell (id, amount, date, client_id, dealer_id) VALUES (207, 948.5, '2012-09-10 00:00:00.000000', 805, 102);
INSERT INTO sell (id, amount, date, client_id, dealer_id) VALUES (205, 2400.6, '2012-07-27 00:00:00.000000', 807, 101);
INSERT INTO sell (id, amount, date, client_id, dealer_id) VALUES (208, 5760, '2012-09-10 00:00:00.000000', 802, 101);
INSERT INTO sell (id, amount, date, client_id, dealer_id) VALUES (210, 1983.43, '2012-10-10 00:00:00.000000', 804, 106);
INSERT INTO sell (id, amount, date, client_id, dealer_id) VALUES (203, 2480.4, '2012-10-10 00:00:00.000000', 809, 103);
INSERT INTO sell (id, amount, date, client_id, dealer_id) VALUES (212, 250.45, '2012-06-27 00:00:00.000000', 808, 102);
INSERT INTO sell (id, amount, date, client_id, dealer_id) VALUES (211, 75.29, '2012-08-17 00:00:00.000000', 803, 107);
INSERT INTO sell (id, amount, date, client_id, dealer_id) VALUES (213, 3045.6, '2012-04-25 00:00:00.000000', 802, 101);

-- drop table client;
-- drop table dealer;
-- drop table sell;

-- a
select * from dealer inner join client
    on dealer.id = client.dealer_id;

-- b
select  c.name,c.city,c.priority,s.id, s.amount,s.date from client c
    inner join sell s
        on s.dealer_id = c.dealer_id;

--c
select  d.name, c.name, c.city from dealer d
    inner join client c
        on d.location = c.city;

--d
select s.id, s.amount, c.name, c.city from sell s
    inner join  client c
        on s.amount >= 100 and s.amount <= 500 and c.id = s.client_id;

--e
select d.id, d.name from dealer d
    left outer join client c
        on c.dealer_id = d.id;

--f
select d.name, c.name, c.city, d.charge from dealer d
    inner join client c
        on d.id = c.dealer_id;

--g
select client.name,client.city, dealer.name from client inner join dealer  on dealer.id = client.dealer_id where dealer.charge > 0.12

--h
select c.name, c.city, s.id, s.amount, d.name, d.charge
from (client c left join sell s on c.id = s.client_id)
    left join dealer d
        on d.id = s.dealer_id;

--i
select c.name, c.city, c.priority, d.name, s.id, s.amount
from( client c right outer join  dealer d on c.dealer_id = d.id)
            left outer join sell s
                on c.id = s.client_id
where amount >= 2000 and c.priority IS NOT  NULL;

-- Task 2 --
--a
create  view  v1 as
    select  date, count(distinct client_id ), avg(amount), sum(amount) from sell
    group by date;

--b
create  view  v2 as
    select  date, count(distinct client_id ), avg(amount), sum(amount) as sm from sell
    group by date
    order by sm desc LIMIT 5;

--c
create view v3 as
    select count(client_id), avg(amount), sum(amount) from sell
    group by client_id;

--d
create view v4 as
    select location, charge, sum(amount) as sum, charge * sum(amount) as total from sell
        inner join  dealer
            on sell.dealer_id = dealer.id
    group by location,charge;

--e
create view v5 as
    select count(client_id), avg(amount), sum(amount) from sell
        inner join dealer on sell.dealer_id = dealer.id
    group by location;

--f
create view v6 as
    select count(sell.id),avg(amount), sum(amount) from client
    inner join  sell
        on client.id = sell.client_id
    group by  city;

--g
create view v7 as
    select city,sum(amount) as sm
    from (sell inner join  client  on sell.client_id = client.id)
    group by  city
    where  sm  >  (select sum(amount) from dealer d inner join sell s on d.id = d.dealer_id
                    group by location)

