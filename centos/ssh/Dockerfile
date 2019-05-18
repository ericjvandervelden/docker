from centos
run yum -y install openssh-server openssh-clients
run yum clean all

run echo 'root:root' | chpasswd

run FIL="/etc/ssh/sshd_config";TMP="$(mktemp)";awk '{print gensub("(#)(PermitRootLogin yes)","\\2",1);}' "$FIL" >"$TMP";mv -f "$TMP" "$FIL"

run ssh-keygen -A
expose 22
CMD ["/usr/sbin/sshd","-D"]
