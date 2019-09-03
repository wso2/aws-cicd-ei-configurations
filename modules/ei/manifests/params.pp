# ----------------------------------------------------------------------------
#  Copyright (c) 2018 WSO2, Inc. http://www.wso2.org
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
# ----------------------------------------------------------------------------

# Claas ei::params
# This class includes all the necessary parameters.
class ei::params {
  $user = 'wso2carbon'
  $user_id = 802
  $user_group = 'wso2'
  $user_home = '/home/$user'
  $user_group_id = 802
  $hostname = 'ALB_DNS_NAME'
  $mgt_hostname = 'ALB_DNS_NAME'
  $jdk_version = 'JDK_TYPE'
  $aws_access_key = 'ACCESS_KEY'
  $aws_secret_key = 'SECRET_KEY'
  $aws_region = 'REGION_NAME'
  $local_member_host = 'LOCAL-MEMBER-HOST'
  $http_proxy_port = '80'
  $https_proxy_port = '443'
  $product = 'wso2ei'
  $product_version = '6.5.0'
  $profile = 'integrator'
  $service_name = "${product}-${profile}"
  # $ei_analytics = 'CF_ANALYTICS_IP'
  $ei_analytics = 'localhost'
  $mediation_flow_statistics = 'false'
  # $broker_elb_dns_name  = 'BROKER_ELB_DNS_NAME'
  $broker_elb_dns_name = 'localhost'
  $ei_package = '$product-$product_version.zip'
  $wso2_path="/var/lib/jenkins/workspace/$product-$product_version/${module_name}"
  $start_script_template="bin/integrator.sh"
  $mysql_connector="mysql-connector-java-5.1.41-bin.jar"
  $puppet_modules_path ="/var/lib/jenkins/workspace/$product-$product_version/configs/modules"

  $template_list = [
    'conf/datasources/master-datasources.xml',
    'conf/carbon.xml',
    'conf/axis2/axis2.xml',
    'conf/user-mgt.xml',
    'conf/registry.xml',
    'conf/tomcat/catalina-server.xml',
    'conf/synapse.properties',
    'conf/jndi.properties',
    'repository/deployment/server/eventpublishers/MessageFlowConfigurationPublisher.xml',
    'repository/deployment/server/eventpublishers/MessageFlowStatisticsPublisher.xml',
  ]

  # ------ Configuration Params ------ #

  # master-datasources.xml

  $wso2carbon_db_username = 'CF_DB_USERNAME'
  $wso2carbon_db_password = 'CF_DB_PASSWORD'

  $reg_db_url = 'jdbc:mysql://RDS_DNS_NAME:3306/WSO2EI_INTEGRATOR_CONFIG_GOV_DB?autoReconnect=true&amp;useSSL=false'
  $reg_db_username = 'CF_DB_USERNAME'
  $reg_db_password = 'CF_DB_PASSWORD'

  $user_db_url = 'jdbc:mysql://RDS_DNS_NAME:3306/WSO2EI_USER_DB?autoReconnect=true&amp;useSSL=false'
  $user_db_username = 'CF_DB_USERNAME'
  $user_db_password = 'CF_DB_PASSWORD'

  # carbon.xml
  $security_keystore_location = '${carbon.home}/repository/resources/security/wso2carbon.jks'
  $security_keystore_type = 'JKS'
  $security_keystore_password = 'wso2carbon'
  $security_keystore_key_alias = 'wso2carbon'
  $security_keystore_key_password = 'wso2carbon'

  $security_trust_store_location = '${carbon.home}/repository/resources/security/client-truststore.jks'
  $security_trust_store_type = 'JKS'
  $security_trust_store_password = 'wso2carbon'

  # axis2.xml
  $transport_receiver_keystore_location = 'repository/resources/security/wso2carbon.jks'
  $transport_receiver_keystore_type = 'JKS'
  $transport_receiver_keystore_password = 'wso2carbon'
  $transport_receiver_keystore_key_password = 'wso2carbon'

  $transport_receiver_trust_store_location = 'repository/resources/security/client-truststore.jks'
  $transport_receiver_trust_store_type = 'JKS'
  $transport_receiver_trust_store_password = 'wso2carbon'

  $transport_sender_keystore_location = 'repository/resources/security/wso2carbon.jks'
  $transport_sender_keystore_type = 'JKS'
  $transport_sender_keystore_password = 'wso2carbon'
  $transport_sender_keystore_key_password = 'wso2carbon'

  $transport_sender_trust_store_location = 'repository/resources/security/client-truststore.jks'
  $transport_sender_trust_store_type = 'JKS'
  $transport_sender_trust_store_password = 'wso2carbon'

  # user-mgt.xml
  $admin_username = 'admin'
  $admin_password = 'admin'
}
