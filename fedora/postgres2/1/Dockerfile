from my/fedora-locale
run ["dnf","-y","install","postgresql-server","postgresql-contrib"]
run ["dnf","-y","install","findutils","less","procps-ng"]
run ["dnf","-y","install","tar"]
run ["dnf","-y","install","dnf-command(repoquery)"]
run ["dnf","-y","install","sudo","passwd","vim","less"]
run ["dnf","-y","install","findutils"]
run ["useradd","eric"]
#run usermod -a -G wheel eric
#run passwd -uf eric
#run ["su","-","eric","-c","echo π > 1.txt"]
#run su - eric -c "cat 1.txt"

#run chmod o+rwx . 
#run pwd | xargs -I % echo % > 2.txt
#run ["echo π>1.txt"]

#run ["echo","2"]
#run ["su","-","eric","-c","ls -l"]
#run ["su","-","eric","-c","ls","-l"]
#run ["su","-","eric","-c","ls -l;pwd"]
#run ["su","-","eric","-c","ls -l","pwd"]

run ["echo","3"]
run ["su","-","eric","-c","chmod o+wx ."]
run ["su","postgres","-c","mkdir /home/eric/pgsql"]
run ["su","-","eric","-c","chmod o-w ."]
#run ["su","-","eric","-c","ls -l"]
run ["su","postgres","-c","initdb -D /home/eric/pgsql/data -A ident"]
# or
#run ["su","-","postgres","-c","initdb -D /home/eric/pgsql/data --locale=en_US.utf8"]
# or
#run ["su","-","postgres","-c","export LANG=en_US.utf8;initdb -D /home/eric/pgsql/data"]
run ["su","postgres","-c","sed -i '/^local/s/peer/trust/' /home/eric/pgsql/data/pg_hba.conf"]
run ["su","postgres","-c","sed -i '/^host/{/::1\\/128/s/ident/password/}' /home/eric/pgsql/data/pg_hba.conf"]

run ["echo","1"]
add ["/.psqlrc","/home/eric"]
run ["chown","eric.eric","/home/eric/.psqlrc"]
run echo "ls" | su - eric
run echo '\dg' | psql -U postgres
# TODO
#run ["su","eric","-c","echo '\set AUTOCOMMIT off' >~/.psqlrc"]
#run ["su","eric","-c","cat /etc/passwd | awk '/eric/{print}'"]

# restore	,
#run ["su","postgres","-c","initdb -D /home/eric/pgsql/data"]
#run ["su","-","postgres","-c","ls -l /home/eric/pgsql/data"]

#expose 5432
#cmd ["su","-","postgres","-c","pg_ctl -D /home/eric/pgsql/data -l logfile start"]
#cmd ["su","-","postgres","-c","postgres -D /home/eric/pgsql/data"]

cmd ["su","postgres","-c","postgres -D /home/eric/pgsql/data"]
