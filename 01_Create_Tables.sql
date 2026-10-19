create database SQL_Practice;

create table if not exists Customers(
    id integer primary key generated always as identity, 
    name text not null, 
    main_address varchar(255) not null, 
    email varchar(255) not null unique
);

create type order_statuses as ENUM(
    'RECEIVED', 
    'PAID', 
    'CANCELLED', 
    'UNDER_PREPARATION', 
    'UNDER_DELIVERY', 
    'DELIVERED'
);

create table if not exists Orders(
    id integer primary key generated always as identity, 
    status order_statuses not null DEFAULT 'RECEIVED', 
    placed_at timestamp not null DEFAULT NOW(), 
    customer_id integer not null,
    
    constraint fk_customer_id foreign key(customer_id) references Customers(id)
);

create table if not exists Products(
    id integer primary key generated always as identity, 
    name text not null unique, 
    price decimal(10, 2) not null check(price >= 0), 
    preparation_time_mins integer not null check(preparation_time_mins > 0)
);

create table if not exists Ordered_products(
    order_id integer not null, 
    product_id integer not null, 
    quantity integer not null DEFAULT 1 check(quantity > 0), 
    unit_price decimal(10, 2) not null check(unit_price >= 0),

    constraint ordered_item primary key(order_id, product_id),
    constraint fk_order_id foreign key(order_id) references Orders(id),
    constraint fk_product_id foreign key(product_id) references Products(id)
);