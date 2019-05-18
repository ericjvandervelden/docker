from my/fedora-locale
run dnf -y upgrade  --setopt=deltarpm=false

run dnf -y install postgresql-server postgresql-contrib

run dnf -y install less hostname iputils
run setcap cap_net_raw,cap_net_admin+p /usr/bin/ping

user postgres
env PGDATA=/var/lib/pgsql/data
run initdb;\
pg_ctl -w start;\
psql -c "create role eric with createdb login password 'eric'";\
psql -c "create role foo with createdb login password 'foo'";\
psql -Ueric postgres -c "create database eric";\
psql -Ufoo postgres -c "create database foo";\
pg_ctl stop;\
echo "host all all 172.18.0.1/24 trust"  >>$PGDATA/pg_hba.conf;\
echo "listen_addresses='*'" >>$PGDATA/postgresql.conf

expose 5432

cmd postgres



