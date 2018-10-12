create table bulktest1 (id integer primary key autoincrement, x text);
create table bulktest2 (id integer primary key autoincrement, y text);
create table bulktest3 (id integer primary key autoincrement, z text);
insert into bulktest1 (x) values ('XXX');
insert into bulktest2 (y) values ('YYY');
insert into bulktest3 (z) values ('ZZZ');
