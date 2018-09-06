create table role (
  id number(5) primary key,
  description varchar2(200) not null
);

comment on table role is 'role';
comment on column role.id is 'role id';
comment on column role.description is 'role description';


create table app_user 
( id number(15) primary key,
  name varchar2(200) not null,
  department varchar2(200) not null
);
comment on table app_user is 'user';
comment on column app_user.id is 'user id';
comment on column app_user.name is 'user name';
comment on column app_user.department is 'user department';

create table user_role (
  id number(15) primary key,
  user_id number(15) not null,
  role_id number(5) not null,  
  constraint fk_user_role_user foreign key (user_id) references app_user(id),
  constraint fk_user_role_role foreign key (role_id) references role(id)
);