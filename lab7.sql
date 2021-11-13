create table customers (
    id integer primary key,
    name varchar(255),
    birth_date date
);

create table accounts(
    account_id varchar(40) primary key ,
    customer_id integer references customers(id),
    currency varchar(3),
    balance float,
    "limit" float
);

create table transactions (
    id serial primary key ,
    date timestamp,
    src_account varchar(40) references accounts(account_id),
    dst_account varchar(40) references accounts(account_id),
    amount float,
    status varchar(20)
);

INSERT INTO customers VALUES (201, 'John', '2021-11-05');
INSERT INTO customers VALUES (202, 'Anny', '2021-11-02');
INSERT INTO customers VALUES (203, 'Rick', '2021-11-24');

INSERT INTO accounts VALUES ('NT10204', 201, 'KZT', 1000, null);
INSERT INTO accounts VALUES ('AB10203', 202, 'USD', 100, 0);
INSERT INTO accounts VALUES ('DK12000', 203, 'EUR', 500, 200);
INSERT INTO accounts VALUES ('NK90123', 201, 'USD', 400, 0);
INSERT INTO accounts VALUES ('RS88012', 203, 'KZT', 5000, -100);

INSERT INTO transactions VALUES (1, '2021-11-05 18:00:34.000000', 'NT10204', 'RS88012', 1000, 'commited');
INSERT INTO transactions VALUES (2, '2021-11-05 18:01:19.000000', 'NK90123', 'AB10203', 500, 'rollback');
INSERT INTO transactions VALUES (3, '2021-06-05 18:02:45.000000', 'RS88012', 'NT10204', 400, 'init');


-- Task 1

--How we can store large-object types:
--blob: binary large object and collection of binary data
--clob: character large object – collection of character data

-- Task 2

create role accountant;
create role adminstrator;
create role support;
create user Boss;
create user admin;
grant accountant to adminstrator;
grant support to accountant;
grant accountant to boss;
grant adminstrator to admin;
grant accountant to admin;
revoke boss from accountant;


-- Task 3

-- Task 4
alter table accounts rename column currency to user_defined;

-- Task 5

-- 1
create unique index  test11 on accounts(account_id);

-- 2
create index test22 on accounts
    (user_defined,balance);

-- Task 6
begin transaction;
update accounts
set balance = a.balance + 100.00
from accounts a, transactions t
where a.account_id = t.dst_account;
savepoint s1;
update accounts
set balance = a.balance - 100.00
from accounts a, transactions t
where a.account_id = t.src_account and a.balance - 100 > a.limit;
commit;
rollback;


