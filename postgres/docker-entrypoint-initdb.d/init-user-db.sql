--\set AUTOCOMMIT off
create role docker login createdb password 'eric';
commit;
create database eric;
--drop role docker;
