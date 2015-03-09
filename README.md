#get started. 
https://github.com/discourse/discourse/blob/master/docs/INSTALL-digital-ocean.md

#mac
https://github.com/OrlandoLee/discourse/blob/master/docs/DEVELOPMENT-OSX-NATIVE.md

#use your own repo
https://meta.discourse.org/t/how-to-install-my-customized-repo-of-discourse-on-production-server/23364/5

#useful command
- ./launcher enter app
- pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start </br>
-   postgres -D /usr/local/var/postgres </br>
-    pg_ctl -D /usr/local/var/postgres -l logfile start </br>
- SiteSetting.default_locale = 'zh_CN'
- 
#backup and restore
- sudo -u postgres pg_dump discourse > outfile
- sudo -u postgres psql discourse < infile

#swap
- sudo install -o root -g root -m 0600 /dev/null /swapfile
- dd if=/dev/zero of=/swapfile bs=1k count=2048k
- mkswap /swapfile
- swapon /swapfile
- echo "/swapfile       swap    swap    auto      0       0" | sudo tee -a /etc/fstab
- sudo sysctl -w vm.swappiness=10
- echo vm.swappiness = 10 | sudo tee -a /etc/sysctl.conf
