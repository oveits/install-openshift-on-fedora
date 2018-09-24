
if grep disabled /etc/selinux/config; then 
   sed -i 's/SELINUX=(.*)/SELINUX=permissive/g' /etc/selinux/config 
   reboot
else
   echo 'Selinux is enabled; nothing to do'
fi