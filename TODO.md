#Repo configuration

mkdir -p /var/www/html/phabricator-server/phabricator/repo-data
sudo ./bin/config set repository.default-local-path /var/www/html/phabricator-server/phabricator/repo-data


#mysql

copy the mysql config file and restart it


#phd daemons

Use template to add it to upstart


#Base uri config

we need to work with dns to fix this one, or a fixed ip.
eg: sudo ./bin/config set phabricator.base-uri 'http://192.168.167.158/'


#Configure timezone

eg: sudo ./bin/config set phabricator.timezone America/Sao_Paulo
