create table waiter (
    waiter_id integer primary key autoincrement not null,
    waiter_name text
);
create table customer (
    customer_id integer primary key autoincrement not null
);
create table chef (
    chef_id integer primary key autoincrement not null,
    chef_name text not null
);
create table product (
    product_id integer primary key autoincrement,
    product_name text not null,
    product_price integer not null,
    product_description text not null
);
create table orden (
    orden_id integer primary key autoincrement,
    orden_price integer not null,
    product_id integer not null,
    customer_id integer not null,
    foreign key (product_id) REFERENCES product(product_id),
    foreign key (customer_id) REFERENCES customer(customer_id)
);