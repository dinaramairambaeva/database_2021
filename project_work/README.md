# Project work 
Database model of retailing company

The given project demonstrates the database of retailing companies.
Tha following database consists of entities as customers, orders, products (their type and brand), stores and warehouse. 

The orders are made in stores by customers, so there are foreign keys as customer_id, store_id in "orders" table. 
The information about each order saved in the relaion of order with products (order_details), where it can be found, what products sold in the following order. That's why it has a "many (products) to one (order)" relation. 

Also, we consider, that there is only warehouse that is connected with all stores of company. It includes the information about products in it, their amount and price. 

The table custumers stores information about the people who joined freuent-shopper program. They can relate to stores by their orders. 
