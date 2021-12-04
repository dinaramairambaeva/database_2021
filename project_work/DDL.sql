
CREATE TABLE product_types(
  product_type_id BIGSERIAL PRIMARY KEY,
  product_type_name VARCHAR(50)
);

CREATE TABLE vendors(
  vendor_id BIGSERIAL PRIMARY KEY,
  vendor_name VARCHAR(50)
);

CREATE TABLE brands(
  brand_id BIGSERIAL PRIMARY KEY,
  vendor_id INT NOT NULL,
  FOREIGN KEY (vendor_id) REFERENCES vendors (vendor_id),
  brand_name VARCHAR(50)
);

CREATE TABLE products(
  product_id BIGSERIAL PRIMARY KEY,
  brand_id INT NOT NULL,
  product_type_id INT NOT NULL,
  FOREIGN KEY (brand_id) REFERENCES brands (brand_id),
  FOREIGN KEY (product_type_id) REFERENCES product_types (product_type_id),
  product_name VARCHAR(50),
  product_size VARCHAR(50),
  product_packaging VARCHAR(50),
  product_upc VARCHAR(50)
);

CREATE TABLE stores(
  store_id BIGSERIAL PRIMARY KEY,
  store_name VARCHAR(50),
  store_location VARCHAR(50),
  store_open_time TIME NOT NULL,
  store_close_time TIME NOT NULL
);

CREATE TABLE warehouse(
  warehouse_id BIGSERIAL PRIMARY KEY,
  store_product_amount INT,
  store_product_price INT,
  product_id INT,
  FOREIGN KEY (product_id) REFERENCES products (product_id),
  store_id INT,
  FOREIGN KEY (store_id) REFERENCES stores (store_id)
);

CREATE TABLE customers(
  customer_id BIGSERIAL PRIMARY KEY,
  customer_info VARCHAR(50),
  customer_name VARCHAR(50),
  customer_surname VARCHAR(50),
  customer_age INT,
  customer_offline INT
);

CREATE TABLE orders(
  order_id BIGSERIAL PRIMARY KEY,
  customer_id INT NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
  store_id INT NOT NULL,
  FOREIGN KEY (store_id) REFERENCES stores (store_id)
);

CREATE TABLE order_details(
  detail_id BIGSERIAL PRIMARY KEY,
  amount INT not null,
  order_id INT NOT NULL,
  FOREIGN KEY (order_id) REFERENCES orders (order_id),
  product_id INT NOT NULL,
  FOREIGN KEY (product_id) REFERENCES products (product_id)
)
