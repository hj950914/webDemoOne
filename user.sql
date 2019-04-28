create database WebDemoOne;

create table user(
id int(11) not null auto_increment primary key comment'主键',
username varchar(16) default null comment'用户名',
phone varchar (22) default null comment'电话',
address varchar(1024) default null comment'地址'
)ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;