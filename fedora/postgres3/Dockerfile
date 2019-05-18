from my/fedora-locale
run dnf -y upgrade  --setopt=deltarpm=false

run dnf -y install postgresql-server postgresql-contrib

run echo $_$_$_$_$_$_$_$

#user postgres
#run env 				# HOME=/var/lib/pgsql
	#run echo $HOME
	#run export PGDATA=$HOME/foo
	#run export PGDATA=foo
#env PGDATA=$HOME 
	#env FOO=foo
	#env PGDATA=$FOO/bar
	#env PGDATA=$HOME/foo
#run env					# PGDATA=
	#run echo $PGDATA

user postgres

run source $HOME/.bash_profile;\
echo $PGDATA;\
initdb;\ 
echo "host all all 0.0.0.0/0"  >>$PGDATA/pg_hba.conf;\
echo "listen_addresses='*'" >>$PGDATA/postgresql.conf;

expose 5432

cmd source $HOME/.bash_profile;\
postgres


#run echo $HOME
#run echo $HOME/foo 
#run echo $FOO
#run env 

#run su - postgres -c env 

#run env


#user postgres

#run echo baz 

#run echo $HOME

#run source $HOME/.bash_profile

# run echo $PGDATA 

#run su - postgres -c initdb

#run echo "host all all 0.0.0.0/0"  >>/var/lib/pgsql/data/pg_hba.conf
#run echo "listen_addresses='*'" >>/var/lib/pgsql/data/postgresql.conf
#expose 5432

#cmd su - postgres -c "pg_ctl -D /var/lib/pgsql/data -l logfile start"
#cmd su - postgres -c "postgres -D /var/lib/pgsql/data -l logfile start"


