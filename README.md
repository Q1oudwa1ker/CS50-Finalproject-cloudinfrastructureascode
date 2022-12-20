# CS50 Final Project 2022
# Deploying a Cloud Infrastructure for a Webservice with Infrastrucutre as Code


## Youtube Video: https://www.youtube.com/watch?v=6PVimJPaTHg


## Description of Project:
Infrastructure as Code deployment of a fully functional Wordpress website hosted on Azure as a App Service with a MySQL Flexible server back end and with a CDN (Content Delivery Network) front end. 


# IaC-Tool: Terraform by Hashicorp
# Cloud Services: Azure App Service, Azure SQL, Azure FrontDoor 
**PLEASE NOTE! THE USE OF CLOUD SERVICES IN AZURE MAY INCUR MONTHLY CHARGES. YOU ALSO NEED TO HAVE AN ACTIVE AZURE ACCOUNT / SUBSCRIPTION!**


This Terraform template deploys the resources for running a WordPress site on a Linux App service on Azure.
It deploys the following IaaS (Infrastructure-as-a-Service) and PaaS (Platform-as-a-Service) resources:
* App Service Hosting Plan - Provisoned to use a WordPress container image based on the alpine latest build.
* App Service - Configured to use a WordPress container image based on the alpine latest build.
* MySQL Server running on the Flexible server SKU with a database deployed and configured for use with WordPress.
* Virtual Network - with a 10.0.0.0/16 CIDR block.
* Private DNS Zone for the MySQL database.
* CDN Profile (Azure Frontdoor) with a CDN profile endpoint with compression enabled.


## Overview
The main Terraform template (main.tf) is divided up into easy to read and modify sections and is very configurable via custom parameters that are  documented. 
You can deploy this template with changing parameters in 'dev.auto.tfvars'. There is a terraform variables file (dev.auto.tfvars) included in the repository which you can change the values to suit your deployment. 
Please remember to **NOT** store usernames or passwords in this file if you have it public, only in private. The variables file should be self expanatory as the parameters are names in accordance with their purpose.


## How to deploy
Firstly, modify the variable file (dev.auto.tfvars) with the parameter input values for your environment, its accepted practice to have a variables file per environment/deployment as needed.

From there run the following commands in VScode Terminal (Azure login should be initialized in VScode Terminal before running this commands):

* terraform init    ** - To download and initialize the Terraform providers locally.
* terraform plan    ** - To show changes required by the current configuration, if passing in the file 'dev.tfvars' as input. You will be prompted for passwords for the MySQL and Wordpress installations.In our code it is automated (dev.auto.tfvars), no action needed.
* terraform apply   ** - To deploy the infrastructure, if passing in the file 'dev.tfvars' as input. You will be prompted for passwords for the MySQL and Wordpress installations. Once you have checked the deployment - Confirm creation by entering 'Yes'. In our code it is automated (dev.auto.tfvars), no action needed.
* terraform destroy ** - To destroy previously-created infrastructure. You will be prompted for passwords for the MySQL and Wordpress installations if you used 'dev.tfvars' instead of 'dev.auto.tfvars'. Once you have checked the deployment - Confirm destruction by entering 'Yes'.


# The following tools and software should be pre installed and set up in your development environment before deployment:
* Windows 10 or Windows 11 or an operating system where the tools below can also be used. 
* VScode (latest version)
* Terraform (latest version)
* Azure CLI (latest version)
* git (last version)
* An active Azure Subscription is required (Billing Account on Microsoft Azure via PAYG or CSP)

For more information about the tools and software solutions, visit the official website or the documentation page of each solution. 


### Links
* https://code.visualstudio.com/
* https://www.terraform.io/
* https://git-scm.com/
* https://azure.microsoft.com/de-de/
* https://learn.microsoft.com/en-us/cli/azure/install-azure-cli
* https://wordpress.com/


### If you have any issues with the code, write me to troubleshoot these @ qloudwalkerAToutlookDOTde


