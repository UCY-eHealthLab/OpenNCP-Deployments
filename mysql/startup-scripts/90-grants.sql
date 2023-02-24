
GRANT ALL PRIVILEGES ON ehealth_properties.* TO 'openncpUser'@'%';
GRANT ALL PRIVILEGES ON ehealth_eadc.* TO 'openncpUser'@'%';
GRANT ALL PRIVILEGES ON ehealth_logs.* TO 'openncpUser'@'%';
GRANT ALL PRIVILEGES ON ehealth_ltrdb.* TO 'openncpUser'@'%';
GRANT ALL PRIVILEGES ON ehealth_atna.* TO 'openncpUser'@'%';

#not used at the moment
#GRANT ALL PRIVILEGES ON openncp_portal.* TO 'openncpUser'@'%';
#GRANT ALL PRIVILEGES ON loganalyzer.* TO 'openncpUser'@'%';
#GRANT ALL PRIVILEGES ON statping.* TO 'openncpUser'@'%';
#GRANT ALL PRIVILEGES ON openncp_users.* TO 'openncpUser'@'%';
Flush privileges;

