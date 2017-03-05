drop table if exists customer;
drop table if exists customer_phone;
drop table if exists item;
drop table if exists theorder;
drop table if exists phone_number;
drop table if exists product;

create table customer (id bigint not null auto_increment, name varchar(255), primary key (id));
create table customer_phone (customer_id bigint not null, phone_number_id bigint not null, primary key (customer_id, phone_number_id));
create table item (id bigint not null auto_increment, quantity integer not null, theorder_id bigint, product_id bigint, primary key (id));
create table theorder (id bigint not null auto_increment, created_at datetime, customer_id bigint, primary key (id));
create table phone_number (id bigint not null auto_increment, value varchar(255), primary key (id));
create table product (id bigint not null auto_increment, name varchar(255), primary key (id));

alter table customer_phone add constraint fk_phone_number foreign key (phone_number_id) references phone_number (id);
alter table customer_phone add constraint fk_customer_phone foreign key (customer_id) references customer (id);
alter table theorder add constraint fk_customer foreign key (customer_id) references customer (id);
alter table item add constraint fk_product foreign key (product_id) references product (id);
alter table item add constraint fk_theorder foreign key (theorder_id) references theorder (id);