from my/fedora-locale
run dnf -y upgrade --refresh --setopt=deltarpm=false
run dnf -y install procps-ng
run echo "π" >pi.txt
run echo "Π" >cap_pi.txt
run useradd postgres
run echo "export LANG=en_US.utf8" >>/home/postgres/.bash_profile
run cat /home/postgres/.bash_profile 
run cat pi.txt
ENV abc=hello
ENV abc=bye def=$abc
ENV ghi=$abc
run echo $abc $def $ghi
run dnf -y install findutils
#cmd echo "ε" >/eps.txt
#cmd cat /pi.txt
#workdir /tmp
#env foo onhost.txt
#add $foo tmp/
#copy $foo tmp/
#copy . tmp/ 
#cmd sleep 3

entrypoint ["top","-b"]
cmd ["-c"]

#entrypoint ["/script.sh"]
#cmd ["foo"]
