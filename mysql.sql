create database demo default character set utf8;
##这是一个注释
-- 这是一个注释
## create table 表名(列名 数据类型(长度),列名 数据类型(长度)....);
## 创建表 stu  列名  sid 编号 sname 姓名  gender 性别  生日 sbir
use demo; 
create table stu(
sid int,##编号
sname varchar(100),##姓名
gender char(2),##性别
sbir date ##生日
);
show tables;
##查看表结构
desc stu;
##alter table 表名 add 列名 数据类型(长度);
alter table stu add tel varchar(50);
##将性别改成int类型  alter table 表名 modify 列名 数据类型(长度);
alter table stu modify gender int;
##将gender列改为sex列 alter table 表名 change 旧列名 新列名 数据类型(长度); 
alter table stu change gender sex int;
## 删除tel列   alter table 表名 drop 列名;
alter table stu drop tel;
##将表名stu变为student      alter table 旧表名 rename 新表名;
alter table stu rename student;
desc student;
drop table student;

show tables;

##向stu表添加一行数据
insert into stu(sid,sname,gender,sbir)values(1,'张无忌','男','1999-9-10');
insert into stu(sid,sname)values(2,'赵丽颖');
##insert into 表名 values(值1,值2,值3....);
insert into stu values(3,'殷素素','女','1979-2-10');

##insert into 表名(列名1,列名2...)values(值1,值2....),(值1,值2....),(值1,值2....)....;
insert into stu(sid,sname,gender,sbir)values(4,'金毛丝王','男',now()),(5,'白眉鹰王','男',now());
use demo;
##update 表名  set 列名1=新值,列名2=新值.. where 条件; 目前条件写法 列名 = 值;
##修改编号为2的用户名，生日信息
update stu set sname='柳岩',sbir='2000-10-01' where sid =2; 
update stu set gender='女' where sname='柳岩';

##delete from 表名 where 条件; 目前条件写法 列名 = 值;
##删除性别为男的信息
delete from stu where gender ='男';
delete from stu; ##清空数据
delete from stu where 1=1;  ##清空数据
truncate 表名;##截断表
truncate stu;
