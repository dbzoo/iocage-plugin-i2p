# iocage-plugin-i2p
Artifact files for I2P iocage plugin

# Manual installation
```
git clone https://github.com/dbzoo/iocage-plugin-i2p.git
cd iocage-plugin-i2p
iocage fetch -P -n i2p.json vnet=on ip4_addr="vnet0|192.168.1.14/24" defaultrouter="192.168.1.1"
```

# Transparent I2P tunnel
How to build a I2P jail with FreeNAS and have your browser transparently tunnel .i2p domains through the I2P router.
  * http://dbzoo.com/blog/transparent_i2p_tunneling
