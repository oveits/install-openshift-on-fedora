
$INSTALL install -y pyOpenSSL python-cryptography python-lxml java-1.8.0-openjdk-headless patch 
[ "$INSTALL" == "dnf" ] \
   && $INSTALL install -y iproute python3-dbus python3-PyYAML libsemanage-python yum-utils python3-docker \
   || $INSTALL install -y iproute python-PyYAML libsemanage-python yum-utils python-docker


