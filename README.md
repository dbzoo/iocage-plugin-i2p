# iocage-plugin-i2p
Artifact files for I2P iocage plugin

# Manual installation
```
git clone https://github.com/dbzoo/iocage-plugin-i2p.git
cd iocage-plugin-i2p
iocage fetch -P i2p.json --name i2p
```

Point your browser proxy at the IP address of the I2P jail port 4444 for access to .i2p domains

# Transparent I2P tunnel
How to build a I2P jail with FreeNAS and have your browser transparently tunnel .i2p domains through the I2P router.
  * http://dbzoo.com/blog/transparent_i2p_tunneling
