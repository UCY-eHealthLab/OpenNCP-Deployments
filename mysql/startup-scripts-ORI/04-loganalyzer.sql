USE loganalyzer;

# # Create a user to access the Loganalyzer database
# CREATE USER 'loganalyzer'@'%' IDENTIFIED BY 'itis4allofus.';
# GRANT ALL ON loganalyzer.* TO 'loganalyzer'@'%';
# FLUSH PRIVILEGES;

# Create schema
CREATE TABLE IF NOT EXISTS logcon_charts (
                                             ID int(11) NOT NULL AUTO_INCREMENT,
                                             DisplayName varchar(255) NOT NULL,
                                             chart_enabled tinyint(1) NOT NULL DEFAULT '1',
                                             chart_type int(11) NOT NULL,
                                             chart_width int(11) NOT NULL,
                                             chart_field varchar(255) NOT NULL,
                                             chart_defaultfilter varchar(1024) NOT NULL,
                                             maxrecords int(11) NOT NULL,
                                             showpercent tinyint(1) NOT NULL,
                                             userid int(11) DEFAULT NULL,
                                             groupid int(11) DEFAULT NULL,
                                             PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS logcon_config (
                                             propname varchar(32) NOT NULL,
                                             propvalue varchar(255) DEFAULT NULL,
                                             propvalue_text text,
                                             is_global tinyint(1) NOT NULL,
                                             userid int(11) DEFAULT NULL,
                                             groupid int(11) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS logcon_dbmappings (
                                                 ID int(11) NOT NULL AUTO_INCREMENT,
                                                 DisplayName varchar(64) NOT NULL,
                                                 Mappings varchar(1024) NOT NULL,
                                                 PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS logcon_fields (
                                             FieldID varchar(64) NOT NULL,
                                             FieldDefine varchar(64) NOT NULL,
                                             FieldCaption varchar(255) NOT NULL,
                                             FieldType int(11) NOT NULL,
                                             Sortable tinyint(1) NOT NULL,
                                             DefaultWidth int(11) NOT NULL,
                                             FieldAlign varchar(32) NOT NULL,
                                             SearchField varchar(64) NOT NULL,
                                             SearchOnline tinyint(1) NOT NULL,
                                             Trunscate int(11) NOT NULL,
                                             PRIMARY KEY (FieldID)
);

CREATE TABLE IF NOT EXISTS logcon_groupmembers (
                                                   userid int(11) NOT NULL,
                                                   groupid int(11) NOT NULL,
                                                   is_member tinyint(1) NOT NULL DEFAULT '1'
);

CREATE TABLE IF NOT EXISTS logcon_groups (
                                             ID int(11) NOT NULL AUTO_INCREMENT,
                                             groupname varchar(32) NOT NULL,
                                             groupdescription varchar(255) NOT NULL,
                                             grouptype int(11) NOT NULL,
                                             PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS logcon_savedreports (
                                                   ID int(11) NOT NULL AUTO_INCREMENT,
                                                   reportid varchar(255) NOT NULL,
                                                   sourceid int(11) NOT NULL,
                                                   customTitle varchar(255) NOT NULL,
                                                   customComment text NOT NULL,
                                                   filterString text NOT NULL,
                                                   customFilters text NOT NULL,
                                                   outputFormat varchar(64) NOT NULL,
                                                   outputTarget varchar(64) NOT NULL,
                                                   outputTargetDetails text NOT NULL,
                                                   scheduleSettings text NOT NULL,
                                                   PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS logcon_searches (
                                               ID int(11) NOT NULL AUTO_INCREMENT,
                                               DisplayName varchar(255) NOT NULL,
                                               SearchQuery varchar(1024) NOT NULL,
                                               userid int(11) DEFAULT NULL,
                                               groupid int(11) DEFAULT NULL,
                                               PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS logcon_sources (
                                              ID int(11) NOT NULL AUTO_INCREMENT,
                                              Name varchar(255) NOT NULL,
                                              Description text NOT NULL,
                                              SourceType tinyint(4) NOT NULL,
                                              MsgParserList varchar(255) NOT NULL,
                                              MsgNormalize tinyint(1) NOT NULL DEFAULT '0',
                                              MsgSkipUnparseable tinyint(1) NOT NULL DEFAULT '0',
                                              ViewID varchar(64) NOT NULL,
                                              LogLineType varchar(64) DEFAULT NULL,
                                              DiskFile varchar(255) DEFAULT NULL,
                                              DBTableType varchar(64) DEFAULT NULL,
                                              DBType tinyint(4) DEFAULT NULL,
                                              DBServer varchar(255) DEFAULT NULL,
                                              DBName varchar(64) DEFAULT NULL,
                                              DBUser varchar(64) DEFAULT NULL,
                                              DBPassword varchar(255) DEFAULT NULL,
                                              DBTableName varchar(64) DEFAULT NULL,
                                              DBEnableRowCounting tinyint(1) DEFAULT NULL,
                                              DBRecordsPerQuery int(11) NOT NULL DEFAULT '100',
                                              defaultfilter varchar(1024) NOT NULL,
                                              userid int(11) DEFAULT NULL,
                                              groupid int(11) DEFAULT NULL,
                                              PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS logcon_users (
                                            ID int(11) NOT NULL AUTO_INCREMENT,
                                            username varchar(32) NOT NULL,
                                            password varchar(32) NOT NULL,
                                            is_admin tinyint(1) NOT NULL DEFAULT '0',
                                            is_readonly tinyint(1) NOT NULL DEFAULT '0',
                                            last_login int(4) NOT NULL DEFAULT '0',
                                            PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS logcon_views (
                                            ID int(11) NOT NULL AUTO_INCREMENT,
                                            DisplayName varchar(255) NOT NULL,
                                            Columns text NOT NULL,
                                            userid int(11) DEFAULT NULL,
                                            groupid int(11) DEFAULT NULL,
                                            PRIMARY KEY (ID)
);

    # Add admin user (itis4allofus.)
INSERT INTO logcon_users (ID, username, `password`, is_admin, is_readonly, last_login) VALUES
(1, 'admin', 'b7ce2bb47017e839255f515457f9ab70', 1, 0, UNIX_TIMESTAMP());

# Add database version
INSERT INTO logcon_config (propname, propvalue, propvalue_text, is_global, userid, groupid) VALUES
('database_installedversion', '10', NULL, 1, NULL, NULL);

ALTER TABLE logcon_fields MODIFY COLUMN sortable tinyint(1) NOT NULL DEFAULT '0';
ALTER TABLE logcon_fields MODIFY COLUMN Trunscate int(11) NOT NULL DEFAULT '0';

INSERT INTO logcon_groups (ID, groupname, groupdescription, grouptype) VALUES (1, 'CEF', 'CEF', 0);
INSERT INTO logcon_groupmembers (userid, groupid, is_member) VALUES (1, 1, 1);
delete from logcon_views;
delete from logcon_sources;
INSERT INTO logcon_views VALUES (1,'openatna','uID, timereported, FROMHOST, msg',NULL,1),(3,'eadc','uID, IUT, FROMHOST, http_method, EADC_TIME',NULL,1);
INSERT INTO logcon_sources VALUES (4,'openatna','',3,'',0,1,'1',NULL,NULL,'1',0,'db','openatna','root','changeit','messages',0,100,'',NULL,1),(5,'eadc','',3,'',0,0,'3',NULL,NULL,'2',0,'db','eadc','root','changeit','etransaction',0,100,'',NULL,1);
update logcon_config set propvalue=1 where propname='DisableAdminUsers';

INSERT INTO `logcon_dbmappings` VALUES (1,'openatna','uID=>id,timereported=>eventdatetime,FROMHOST=>sourceaddress,msg=>messagecontent'),(2,'eadc','uID=>transaction_pk,IUT=>direction,timereported=>starttime,http_method=>servicename,FROMHOST=>sndncp_oid,EADC_TIME=>starttime');
INSERT INTO `logcon_fields` VALUES ('EADC_TIME','SYSLOG_EADC_TIME','EADC_TIME',0,0,50,'center','eadctime',0,0);
