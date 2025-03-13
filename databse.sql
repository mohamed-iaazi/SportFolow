create database sportdb ;
use sportdb ;


create table user (
                      userId int primary key auto_increment ,
                      username varchar(100) ,
                      email varchar (100) ,
                      password varchar(100),
                      mobile int
)
