/***********************************/
# DEV Variables
/***********************************/

## Password for Database Server and Wordpress are written directly in code in this case. 
##If you not want to save Password here, delete serverPassword and wordpressPassword - there will be prompted in Terminal during process for both the database server and the wordpress installation.
##'example' is only placeholder and can be replaced by your own names and idenfitications. 

#Tags
tags = {
  AppProfile = "Wordpress"
}

#Resource Group
resource_group_name = "example-wordpress-appsvc-rg"

#Location - set all resources to RG location as default
rg_location = "West Europe"

#VNet Name
vnet_name = "wp-app-vnet-example"

#VNet CIDR Address Block
vnet_address_space = "10.0.0.0/16"

#App Subnet name
app_subnet = "wp-app-subnet-cs50"

#App Subnet CIDR
app_subnet_cidr = "10.0.0.0/24"

#DB Subnet name
db_subnet = "wp-db-subnet-cs50"

#DB Subnet CIDR
db_subnet_cidr = "10.0.1.0/24"

#App Service Plan Name
appServicePlanName = "example-wp-appsvc-plan"

#Web App Name
appServiceWebAppName = "example-wp-app-web"

#App Svc SKU
appSvcSkuCode = "B2"

#DB ServerName
DBServerName = "wp-app-dbserver-example"

#DB Username
DBServerUsername = "wpdbuser"

#WP DB Name
databaseName = "example-wp-app-database"

#WP Admin email
wordpressAdminEmail = "YourEmailadresshere"

#WP UserAdmin
wordpressUsername = "wpadmin"

#WP Title
wordpressTitle = "WordPress On Azure App services"

#WP Locale
wpLocaleCode = "de_DE"

#Private DNS Zone Name for DB
privateDnsZoneNameForDb = "example-wp-appsvc-privatelink.mysql.database.azure.com"

#MYSQL SKU
MySQLSku = "GP_Standard_D2ds_v4"

#MYSQL Storage Size
storageSizeGB = "128"

#MySQL Storage IOPs
storageIops = "700"

#MYSQL Autogrow
storageAutoGrow = "Enabled"

#MYSql backup retention days
backupRetentionDays = "7"

#Enable MySQL Geo-Redundant Backup
geoRedundantBackup = "false"

#CDN Endpoint Name
cdnEndpointName = "example-wp-appsvc-endpoint"

#CDN Profile Name
cdnProfileName = "example-wp-appsvc-cdnprofile"

#DB Server Password
serverPassword = "YourPasswordhere"

#Wordpress Password
wordpressPassword = "YourPasswordhere"