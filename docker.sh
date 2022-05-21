docker build .
docker run --name airport-pg -p 5432:5432 -e POSTGRES_PASSWORD=pgpwd4airport -d 8033ec5e0cc7