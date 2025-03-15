create database sportdb ;
use sportdb ;


create table user (
                      userId int primary key auto_increment ,
                      username varchar(100) ,
                      email varchar (100) ,
                      password varchar(100),
                      mobile int
)


create table trainer (
                         id int primary key auto_increment ,
                         spesialisation varchar(100),
                         idUser int ,
                         foreign key (idUser) references user(userId)
);

create table seance (
                        id int primary key auto_increment ,
                        title varchar(100) ,
                        description varchar (100) ,
                        date varchar(100),
                        idTrainer int ,
                        foreign key (idTrainer) references trainer(id)
)