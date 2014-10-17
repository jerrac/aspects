#!/bin/bash
LOCATION="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "${LOCATION}/roles/aspects_apache2"
git fetch origin;
git checkout master;
git pull origin master;

cd "${LOCATION}/roles/aspects_apache22"
git fetch origin;
git checkout master;
git pull origin master;

cd "${LOCATION}/roles/aspects_cron"
git fetch origin;
git checkout master;
git pull origin master;

cd "${LOCATION}/roles/aspects_elasticsearch"
git fetch origin;
git checkout master;
git pull origin master;

cd "${LOCATION}/roles/aspects_local_users"
git fetch origin;
git checkout master;
git pull origin master;

cd "${LOCATION}/roles/aspects_logrotate"
git fetch origin;
git checkout master;
git pull origin master;

cd "${LOCATION}/roles/aspects_logstash"
git fetch origin;
git checkout master;
git pull origin master;

cd "${LOCATION}/roles/aspects_logstash_forwarder"
git fetch origin;
git checkout master;
git pull origin master;

cd "${LOCATION}/roles/aspects_logwatch"
git fetch origin;
git checkout master;
git pull origin master;

cd "${LOCATION}/roles/aspects_monit"
git fetch origin;
git checkout master;
git pull origin master;

cd "${LOCATION}/roles/aspects_mysql_client"
git fetch origin;
git checkout master;
git pull origin master;

cd "${LOCATION}/roles/aspects_mysql_server"
git fetch origin;
git checkout master;
git pull origin master;

cd "${LOCATION}/roles/aspects_ntp_client"
git fetch origin;
git checkout master;
git pull origin master;

cd "${LOCATION}/roles/aspects_openssh"
git fetch origin;
git checkout master;
git pull origin master;

cd "${LOCATION}/roles/aspects_oracle_java"
git fetch origin;
git checkout master;
git pull origin master;

#cd "${LOCATION}/roles/aspects_php"
#git fetch origin;
#git checkout master;
#git pull origin master;

cd "${LOCATION}/roles/aspects_sudo"
git fetch origin;
git checkout master;
git pull origin master;

#cd "${LOCATION}/roles/aspects_tinytinyrss"
#git fetch origin;
#git checkout master;
#git pull origin master;

cd "${LOCATION}/roles/aspects_ufw"
git fetch origin;
git checkout master;
git pull origin master;

cd "${LOCATION}/roles/aspects_unattended_upgrades"
git fetch origin;
git checkout master;
git pull origin master;

cd "${LOCATION}/roles/aspects_yum_cron"
git fetch origin;
git checkout master;
git pull origin master;