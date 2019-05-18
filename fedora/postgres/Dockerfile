from my/fedora-locale
run dnf -y upgrade  --setopt=deltarpm=false

# sshd

run dnf -y install openssh-server openssh-clients

run dnf -y install less procps-ng hostname iputils
run setcap cap_net_raw,cap_net_admin+p /usr/bin/ping

run ssh-keygen -A

expose 22

run ssh-keygen -N "" -t rsa -f ~/.ssh/id_rsa
run cat /root/.ssh/id_rsa.pub >>~/.ssh/authorized_keys

# postgresql


run dnf -y install postgresql-server postgresql-contrib

run dnf -y install findutils tar sudo passwd 
run dnf -y install "dnf-command(repoquery)"

run su - postgres -c "echo \"export LANG=en_US.utf8\">>.bash_profile"
run su - postgres -c "initdb"

copy script.sh /

entrypoint ["/script.sh"]



#run ["su","postgres","-c","sed -i '/^local/s/peer/trust/' /home/eric/pgsql/data/pg_hba.conf"]
#run ["su","postgres","-c","sed -i '/^host/{/::1\\/128/s/ident/password/}' /home/eric/pgsql/data/pg_hba.conf"]
