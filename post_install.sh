#!/bin/sh

pw add user -n i2p -c I2P -s /bin/sh -m

sysrc -f /etc/rc.conf i2p_enable=YES
sysrc -f /etc/rc.conf i2p_user=i2p

/usr/local/etc/rc.d/i2p install

sed -i -e '/^wrapper.java.command=/s#=java#=/usr/local/openjdk8/bin/java#' /home/i2p/i2p/wrapper.config
sed -i -e 's#$INSTALL_PATH#/home/i2p/i2p#' /home/i2p/i2p/wrapper.config
sed -i -e '/^clientApp.0.args=7657 ::1/s/^/#/' /home/i2p/i2p/clients.config
sed -i -e '/^#clientApp.0.args=7657 0.0.0.0/s/#//' /home/i2p/i2p/clients.config
# Enable proxy port 4444 for external access
sed -i -e '/^tunnel.0.interface=127.0.0.1/s/127.0.0.1/0.0.0.0/' /home/i2p/i2p/i2ptunnel.config

/usr/local/etc/rc.d/i2p start
