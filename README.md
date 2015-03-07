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
