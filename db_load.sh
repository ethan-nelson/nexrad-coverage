#!/bin/sh
# This assumes 1) you have ogr2ogr installed and 2) you have the following database items already configured:
#  * Database named 'nexrad' at 'localhost'
#  * User named 'nexrad' with read/write privileges on the database 'nexrad' and password 'nexrad'

ogr2ogr -f "PostgreSQL" PG:"dbname='nexrad' user='nexrad' password='nexrad' host='localhost'" "radar_finest.geoJSON" -nln radar_finest
ogr2ogr -f "PostgreSQL" PG:"dbname='nexrad' user='nexrad' password='nexrad' host='localhost'" "radar_finer.geoJSON" -nln radar_finer
ogr2ogr -f "PostgreSQL" PG:"dbname='nexrad' user='nexrad' password='nexrad' host='localhost'" "radar_fine.geoJSON" -nln radar_fine
ogr2ogr -f "PostgreSQL" PG:"dbname='nexrad' user='nexrad' password='nexrad' host='localhost'" "radar_rough.geoJSON" -nln radar_rough
ogr2ogr -f "PostgreSQL" PG:"dbname='nexrad' user='nexrad' password='nexrad' host='localhost'" "radar_locations.geoJSON" -nln radar_locations
