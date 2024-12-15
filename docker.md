# Restore danabase to sql server via docker

## Copy downloaded database .bak file to docker container
docker cp ~/Downloads/AdventureWorks2022.bak <container_id>:/var/opt/mssql/data/  

## Restore database via Azure Data Studio, or use CLI (searching "Restore a SQL Server database in a Linux container")

## Remove file of db backup from docker
docker exec <container_id> rm /var/opt/mssql/data/file_name.bak
