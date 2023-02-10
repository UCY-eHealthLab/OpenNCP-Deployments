use epsosproperties;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property` (
                            `name` varchar(255) NOT NULL,
                            `value` varchar(255) DEFAULT NULL,
                            `is_smp` bit(1) DEFAULT NULL,
                            PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLE property WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES ('1','NCPB__pt_NCP','\0'),('1363','_cz_ConsentService','\0'),('1393','NCPB__cz_NCP','\0'),('14656938209021738397','NCPB__eu_NCP','\0'),('14656938209021738399','NCPB__eu_NCP','\0'),('14656938209021738400','NCPB__eu_VPNGateway','\0'),('154306681344986597975691362633505941594','_ch_VPNGateway','\0'),('15746125357761445315','NCPB__eu_NCP','\0'),('15746125357761445317','NCPB__eu_NCP','\0'),('15746125357761445318','NCPB__eu_VPNGateway','\0'),('181542113249337128095907391341305904348','NCPB__ch_IdV','\0'),('258227785217549004505346965524378220169','NCPB__ch_VPNGateway','\0'),('292908531449494254427840811065429001063','NCPB__ch_NCP','\0'),('303117921494032655204227257397367902746','NCPB__ch_IdV','\0'),('304161178297569106193999591562928887532023','NCPB__lu_NCP','\0'),('31','NCPB__lu_NCP','\0'),('317664404625616325301692038579774306759','_ch_NCP','\0'),('32','NCPB__lu_NCP','\0'),('33','NCPB__lu_IdV','\0'),('38518008521049413326485751129723132327','NCPB__ch_IdV','\0'),('7','NCPB__cy_NCP','\0'),('8','NCPB__cy_NCP','\0'),('995','NCPB__pt_VPNGateway','\0'),('996','_pt_VPNGateway','\0'),('997','NCPB__pt_NCP','\0'),('998','_pt_NCP','\0'),('999','NCPB__pt_NCP','\0'),('APP_BEHIND_PROXY','false',''),('audit.repository.port','2862','\0'),('audit.repository.url','localhost','\0'),('audit.time.to.try','200','\0'),('auditrep.forcewrite','TRUE','\0'),('AUDIT_DUMP_PATH','/opt/epsos-configuration/audits/1/','\0'),('automated.validation','true','\0'),('automated.validation.remote','false','\0'),('be.ConsentService.WSE','https://localhost:9443/openncp-ws-server/services/XDR_Service','\0'),('be.DispensationService.WSE','https://localhost:9443/openncp-ws-server/services/XDR_Service','\0'),('be.OrderService.WSE','https://localhost:9443/openncp-ws-server/services/XCA_Service','\0'),('be.PatientIdentificationService.WSE','https://localhost:9443/openncp-ws-server/services/XCPD_Service','\0'),('be.PatientService.WSE','https://localhost:9443/openncp-ws-server/services/XCA_Service','\0'),('be.VPNGateway.WSE','localhost','\0'),('CDA_STYLESHEET','/liferay-portal-6.2-ce-ga6/tomcat-7.0.62/webapps/epsosportal/cda.xhtml','\0'),('certificates.storepath','/opt/epsos-configuration/certs_MT/','\0'),('ch.PatientIdentificationService.WSE','https://ncp-ppt.ch.ehealth.testa.eu:8443/openncp-ws-server/services/XCPD_Service','\0'),('ch.PatientService.WSE','https://ncp-ppt.ch.ehealth.testa.eu:8443/openncp-ws-server/services/XCA_Service','\0'),('COUNTRY_CODE','MT','\0'),('COUNTRY_NAME','MALTA','\0'),('COUNTRY_PRINCIPAL_SUBDIVISION','MT-1','\0'),('cy.ConsentService.WSE','https://194.42.17.185:9443/openncp-ws-server/services/XDR_Service','\0'),('cy.DispensationService.WSE','https://194.42.17.185:9443/openncp-ws-server/services/XDR_Service','\0'),('cy.NCPB_VPNGateway.WSE','194.42.17.185','\0'),('cy.OrderService.WSE','https://62.62.115.79:9443/openncp-ws-server/services/XCA_Service','\0'),('cy.PatientIdentificationService.WSE','https://62.62.115.79:9443/openncp-ws-server/services/XCPD_Service','\0'),('cy.PatientService.WSE','https://62.62.115.79:9443/openncp-ws-server/services/XCA_Service','\0'),('cy.VPNGateway.WSE','194.42.17.185','\0'),('cz.ConsentService.WSE','http://ncp-a.cz.ehealth.testa.eu:8443/openncp-ws-server/services/XDR_Service','\0'),('cz.NCP.WSE','195.93.216.32','\0'),('cz.NCPB_NCP.WSE','ncbp.nixzd.cz','\0'),('cz.NCPB_VPNGateway.WSE','195.93.216.33','\0'),('cz.OrderService.WSE','https://ncp-a.cz.ehealth.testa.eu:8443/openncp-ws-server/services/XCA_Service','\0'),('cz.PatientIdentificationService.WSE','https://ncp-a.cz.ehealth.testa.eu:8443/openncp-ws-server/services/XCPD_Service','\0'),('cz.PatientService.WSE','https://ncp-a.cz.ehealth.testa.eu:8443/openncp-ws-server/services/XCA_Service','\0'),('cz.VPNGateway.WSE','195.93.216.32','\0'),('eu.ConsentService.WSE','https://172.16.0.243:8443/openncp-ws-server/services/XDR_Service','\0'),('eu.DispensationService.WSE','https://172.16.0.243:8443/openncp-ws-server/services/XDR_Service','\0'),('eu.NCPB_VPNGateway.WSE','https://172.16.0.243:8443','\0'),('eu.OrderService.WSE','https://172.16.0.243:8443/openncp-ws-server/services/XCA_Service','\0'),('eu.PatientIdentificationService.WSE','https://172.16.0.243:8443/openncp-ws-server/services/XCPD_Service','\0'),('eu.PatientService.WSE','https://172.16.0.243:8443/openncp-ws-server/services/XCA_Service','\0'),('eu.VPNGateway.WSE','https://172.16.0.243:8443','\0'),('HOME_COMM_ID','2.16.470.1.100.1.2.1000.990.1','\0'),('hr.ConsentService.WSE','https://172.16.0.246:9443/openncp-ws-server/services/XDR_Service','\0'),('hr.DispensationService.WSE','https://172.16.0.246:9443/openncp-ws-server/services/XDR_Service','\0'),('hr.OrderService.WSE','https://172.16.0.246:9443/openncp-ws-server/services/XCA_Service','\0'),('hr.PatientIdentificationService.WSE','https://161.53.103.12:8443/epsos-ws-server/services/XCPD_Service','\0'),('hr.PatientService.WSE','https://172.16.0.246:9443/openncp-ws-server/services/XCA_Service','\0'),('hr.VPNGateway.WSE','172.16.0.246','\0'),('ihe.ConsentService.WSE','https://192.168.0.213:9443/openncp-ws-server/services/XDR_Service','\0'),('ihe.DispensationService.WSE','https://192.168.0.213:9443/openncp-ws-server/services/XDR_Service','\0'),('ihe.OrderService.WSE','https://gazelle.ihe.net/rg','\0'),('ihe.PatientIdentificationService.WSE','http://gazelle.ehdsi.ihe-europe.net:9090/xcpd','\0'),('ihe.PatientService.WSE','http://gazelle.ehdsi.ihe-europe.net:9090/rg','\0'),('LANGUAGE_CODE','en-GB','\0'),('lu.NCPB_VPNGateway.WSE','176.65.73.166','\0'),('lu.VPNGateway.WSE','176.65.73.166','\0'),('mt.PatientIdentificationService.WSE','https://localhost:9443/openncp-ws-server/services/XCPD_Service','\0'),('mt.PatientService.WSE','https://localhost:9443/openncp-ws-server/services/XCA_Service','\0'),('ncp.countries','lu','\0'),('ncp.country','MT','\0'),('ncp.email','ncpAdministrator@domain.mt','\0'),('NCP_SIG_KEYSTORE_PASSWORD','changeit','\0'),('NCP_SIG_KEYSTORE_PATH','/opt/epsos-configuration/certs_MT/sign/sign.jks','\0'),('NCP_SIG_PRIVATEKEY_ALIAS','ncp-ppt.mt.ehealth.testa.eu','\0'),('NCP_SIG_PRIVATEKEY_PASSWORD','changeit','\0'),('pn.uniqueid','18','\0'),('PORTAL_ADMIN_PERMISSIONS','PRD-006','\0'),('PORTAL_CCD_ENABLED','false','\0'),('PORTAL_CHECK_PERMISSIONS','false','\0'),('PORTAL_CLIENT_CONNECTOR_URL','http://localhost:9090/openncp-client-connector/services/ClientConnectorService','\0'),('PORTAL_CONSENT_ENABLED','true','\0'),('PORTAL_CONSENT_OID','2.16.470.1.100.1.2.1000.990.1','\0'),('PORTAL_CUSTODIAN_NAME','Country Custodian Name','\0'),('PORTAL_CUSTODIAN_OID','2.16.470.1.100.1.2.1000.990.1','\0'),('PORTAL_DISPENSATION_COUNTRY','BE','\0'),('PORTAL_DISPENSATION_OID','2.16.470.1.100.1.2.1000.990.1','\0'),('PORTAL_DOCTOR_OID','2.16.470.1.100.1.2.1000.990.1','\0'),('PORTAL_DOCTOR_PERMISSIONS','PRD-006,PRD-003,PRD-004,PRD-005,PRD-010,PRD-016,PPD-032,PPD-033','\0'),('PORTAL_ENTRY_OID','2.16.470.1.100.1.2.1000.990.1','\0'),('PORTAL_HCER_ENABLED','false','\0'),('PORTAL_HOSPITAL_OID','2.16.470.1.100.1.2.1000.990.1','\0'),('PORTAL_LEGAL_AUTHENTICATOR_CITY','City','\0'),('PORTAL_LEGAL_AUTHENTICATOR_FIRSTNAME','Firstname','\0'),('PORTAL_LEGAL_AUTHENTICATOR_LASTNAME','Organisation','\0'),('PORTAL_LEGAL_AUTHENTICATOR_ORG_OID','2.16.470.1.100.1.2.1000.990.1','\0'),('PORTAL_LEGAL_AUTHENTICATOR_PERSON_OID','2.16.470.1.100.1.2.1000.990.1','\0'),('PORTAL_LEGAL_AUTHENTICATOR_POSTALCODE','N/A','\0'),('PORTAL_MRO_ENABLED','false','\0'),('PORTAL_NURSE_PERMISSIONS','PRD-006','\0'),('PORTAL_ORDER_OID','2.16.470.1.100.1.2.1000.990.1','\0'),('PORTAL_PATIENTS_OID','2.16.470.1.100.1.2.1000.990.1','\0'),('PORTAL_PATIENT_PERMISSIONS','PRD-006','\0'),('PORTAL_PHARMACIES_OID','2.16.470.1.100.1.2.1000.990.1','\0'),('PORTAL_PHARMACIST_OID','2.16.470.1.100.1.2.1000.990.1','\0'),('PORTAL_PHARMACIST_PERMISSIONS','PRD-006,PRD-004,PRD-010,PPD-046','\0'),('PORTAL_PROPERTIES_UPDATED','TRUE','\0'),('PORTAL_TEST_ASSERTIONS','false','\0'),('pt.ConsentService.WSE','https://ncp-ppt.pt.ehealth.testa.eu:8443/openncp-ws-server/services/XDR_Service','\0'),('pt.DispensationService.WSE','https://ncp-ppt.pt.ehealth.testa.eu:8443/openncp-ws-server/services/XDR_Service','\0'),('pt.OrderService.WSE','https://ncp-ppt.pt.ehealth.testa.eu:8443/openncp-ws-server/services/XCA_Service','\0'),('pt.PatientIdentificationService.WSE','https://ncp-ppt.pt.ehealth.testa.eu:8443/openncp-ws-server/services/XCPD_Service','\0'),('pt.PatientService.WSE','https://ncp-ppt.pt.ehealth.testa.eu:8443/openncp-ws-server/services/XCA_Service','\0'),('pt.VPNGateway.WSE','ncp-ppt.pt.ehealth.testa.eu','\0'),('scheduled.time.between.failed.logs.handling.minutes','60','\0'),('schema_AuditSourceProvider','en_GB','\0'),('SC_KEYSTORE_PASSWORD','changeit','\0'),('SC_KEYSTORE_PATH','/opt/epsos-configuration/certs_MT/sc/sc.jks','\0'),('SC_PRIVATEKEY_ALIAS','ncp-ppt.mt.ehealth.testa.eu','\0'),('SC_PRIVATEKEY_PASSWORD','changeit','\0'),('SC_SMP_CLIENT_PRIVATEKEY_ALIAS','ncp-ppt.mt.ehealth.testa.eu','\0'),('SC_SMP_CLIENT_PRIVATEKEY_PASSWORD','changeit','\0'),('secman.cert.validator.checkforkeyusage','false','\0'),('secman.digest.algorithm.default','http://www.w3.org/2000/09/xmldsig#sha1','\0'),('secman.signature.algorithm.default','http://www.w3.org/2001/04/xmldsig-more#rsa-sha256','\0'),('secman.sts.checkHostname','false','\0'),('secman.sts.url','http://localhost:9090/trc-sts/STSServiceService','\0'),('SERVER_IP','sample.openncp.com','\0'),('SML_DOMAIN','ehealth.testa.eu','\0'),('SMP_ADMIN_URL','https://smp-cert-auth-test.publisher.ehealth.testa.eu','\0'),('SMP_KEYSTORE','/opt/epsos-configuration/certs_MT/smp/smp_trust.jks','\0'),('SMP_SUPPORT','CEF EDELIVERY SUPPORT','\0'),('SMP_SUPPORT_EMAIL','CEF-EDELIVERY-SUPPORT@ec.europa.eu','\0'),('SP_KEYSTORE_PASSWORD','changeit','\0'),('SP_KEYSTORE_PATH','/opt/epsos-configuration/certs_MT/sp/sp.jks','\0'),('SP_PRIVATEKEY_ALIAS','ncp-ppt.mt.ehealth.testa.eu','\0'),('SP_PRIVATEKEY_PASSWORD','changeit','\0'),('TEST_AUDITS_PATH','/opt/epsos-configuration/audits/2/','\0'),('TRUSTSTORE_PASSWORD','bootCamp','\0'),('TRUSTSTORE_PATH','/opt/epsos-configuration/certs_MT/truststore.jks','\0'),('tsl.location.at','https://ecrtsppt.conet-services.de:8445/NCP_Service_Status_List__Austria_AT_.xml','\0'),('tsl.location.ch','https://webgate.ec.europa.eu/ehealth/tsl/NCP_Service_Status_List__Switzerland_CH_.xml','\0'),('tsl.location.cy','https://webgate.ec.europa.eu/ehealth/tsl/NCP_Service_Status_List__Cyprus_CY_.xml','\0'),('tsl.location.cz','https://webgate.ec.europa.eu/ehealth/tsl/NCP_Service_Status_List__Czech_Republic_CZ_.xml','\0'),('tsl.location.de','https://webgate.ec.europa.eu/ehealth/tsl/NCP_Service_Status_List__Germany_DE_.xml','\0'),('tsl.location.dk','https://ecrtsppt.conet-services.de:8445/NCP_Service_Status_List__Denmark_DK_.xml','\0'),('tsl.location.ee','https://ecrtsppt.conet-services.de:8445/NCP_Service_Status_List__Estonia_EE_.xml','\0'),('tsl.location.es','https://ecrtsppt.conet-services.de:8445/NCP_Service_Status_List__Spain_ES_.xml','\0'),('tsl.location.eu','http://172.16.0.243:6060/tsl/NCP_Service_Status_List__European_Commission_EU_.xml','\0'),('tsl.location.fi','https://ecrtsppt.conet-services.de:8445/NCP_Service_Status_List__Finland_FI_.xml','\0'),('tsl.location.fr','https://ecrtsppt.conet-services.de:8445/NCP_Service_Status_List__France_FR_.xml','\0'),('tsl.location.gr','https://ecrtsppt.conet-services.de:8445/NCP_Service_Status_List__Greece_GR_.xml','\0'),('tsl.location.hr','https://ecrtsppt.conet-services.de:8445/NCP_Service_Status_List__Croatia_HR_.xml','\0'),('tsl.location.hu','https://ecrtsppt.conet-services.de:8445/NCP_Service_Status_List__Hungary_HU_.xml','\0'),('tsl.location.ih','https://ecrtsppt.conet-services.de:8445/NCP_Service_Status_List__IHE_FR_.xml','\0'),('tsl.location.it','https://ecrtsppt.conet-services.de:8445/NCP_Service_Status_List__Italy_IT_.xml','\0'),('tsl.location.lu','https://webgate.ec.europa.eu/ehealth/tsl/NCP_Service_Status_List__Luxembourg_LU_.xml','\0'),('tsl.location.mt','https://ecrtsppt.conet-services.de:8445/NCP_Service_Status_List__Malta_MT_.xml','\0'),('tsl.location.pt','https://webgate.ec.europa.eu/ehealth/tsl/NCP_Service_Status_List__Portugal_PT_.xml','\0'),('tsl.location.se','https://ecrtsppt.conet-services.de:8445/NCP_Service_Status_List__Sweden_SE_.xml','\0'),('tsl.location.si','https://ecrtsppt.conet-services.de:8445/NCP_Service_Status_List__Slovenia_SI_.xml','\0'),('tsl.location.sk','https://ecrtsppt.conet-services.de:8445/NCP_Service_Status_List__Slovakia_SK_.xml','\0'),('tsl.location.tr','https://ecrtsppt.conet-services.de:8445/NCP_Service_Status_List__Turkey_TR_.xml','\0'),('WRITE_TEST_AUDITS','true','\0');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-29 12:24:54

DROP TABLE IF EXISTS EHNCP_PROPERTY;

ALTER TABLE property
    CHANGE COLUMN `name` `NAME` VARCHAR(255) NOT NULL,
    CHANGE COLUMN `value` `VALUE` VARCHAR(255) NULL DEFAULT NULL,
    CHANGE COLUMN `is_smp` `IS_SMP` BIT(1) NULL DEFAULT b'0',
    RENAME TO  `EHNCP_PROPERTY`;


CREATE TABLE IF NOT EXISTS EHNCP_ROLE (
                                          ID BIGINT(20) NOT NULL AUTO_INCREMENT,
                                          NAME VARCHAR(50) NOT NULL,
                                          DESCRIPTION VARCHAR(255) NOT NULL,
                                          PRIMARY KEY (ID),
                                          UNIQUE KEY role (NAME)
)  DEFAULT CHARSET=UTF8;

CREATE TABLE IF NOT EXISTS EHNCP_USER (
                                          ID BIGINT(20) NOT NULL AUTO_INCREMENT,
                                          USERNAME VARCHAR(50) NOT NULL,
                                          PASSWORD VARCHAR(255) NOT NULL,
                                          PRIMARY KEY (id)
)  DEFAULT CHARSET=UTF8;


CREATE TABLE IF NOT EXISTS EHNCP_USER_ROLE (
                                               USER_ID BIGINT(20) NOT NULL,
                                               ROLE_ID BIGINT(20) NOT NULL,
                                               KEY FK_USER_ID (USER_ID),
                                               KEY FK_ROLE_ID (ROLE_ID),
                                               CONSTRAINT FK_ROLE_ID FOREIGN KEY (ROLE_ID) REFERENCES EHNCP_ROLE (ID),
                                               CONSTRAINT FK_USER_ID FOREIGN KEY (USER_ID) REFERENCES EHNCP_USER (ID)
)  DEFAULT CHARSET=UTF8;

INSERT INTO EHNCP_ROLE (NAME, DESCRIPTION) VALUES ('ADMIN_SMP', 'Administrator for SMP Server');
INSERT INTO EHNCP_USER (USERNAME, PASSWORD) VALUES ('admin','$2a$10$8r1ag0oDuDpgYXGMmoUOteYxMsnMmC6ZarzvqQ68J5GBrzF4Opz9u');
INSERT INTO EHNCP_USER_ROLE (USER_ID, ROLE_ID) VALUES (1,1);
