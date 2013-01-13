#!/bin/bash
mysql -u root --exec="drop database avtotonus;"
mysql -u root --exec="create database avtotonus default character set utf8";
mysql -u root avtotonus < dump.sql
