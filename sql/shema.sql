create table product (
    id serial primary key,
    name varchar(100) not null,
    price numeric(10,2) not null,
    creation_datetime timestamp default now()
);

create table product_category(
    id serial primary key ,
    name varchar(100) not null,
    product_id int not null,
    constraint fk_product foreign key (product_id) references product(id)
);