from my/fedora-locale 
run dnf -y install openssh-server openssh-clients
run dnf -y install less hostname iputils
run setcap cap_net_raw,cap_net_admin+p /usr/bin/ping

run ssh-keygen -A

expose 22

run ssh-keygen -N "" -t rsa -f ~/.ssh/id_rsa
run cat /root/.ssh/id_rsa.pub >>~/.ssh/authorized_keys

copy script.sh /

entrypoint ["/script.sh"]

#run echo 'root:walnoot' | chpasswd
#run echo "PermitRootLogin yes">>/etc/ssh/sshd_config

#run [ ! -e ~/.ssh ] && mkdir ~/.ssh
#run if [ ! -e ~/.ssh ];then mkdir ~/.ssh;fi
#copy id_dsa.pub /tmp/
#run cat  /tmp/id_dsa.pub  >> ~/.ssh/authorized_keys

#cmd /usr/sbin/sshd -D
#cmd /usr/bin/bash
#cmd /usr/lib/systemd/systemd

