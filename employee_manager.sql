create table if not exists department (
	id serial primary key,
	dep_name varchar(30) not null unique,
	man_id integer unique
);


create table employee (
	id serial primary key,
	full_name varchar(80) not null,
	department_id integer references department(id),
	manager_id integer references department(man_id),
	check(manager_id != id)
);

alter table department add constraint defk foreign key (man_id) references employee(id);