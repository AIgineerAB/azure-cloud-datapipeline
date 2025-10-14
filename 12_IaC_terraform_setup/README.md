# Setup terraform 

<a href="https://youtu.be/d-aejWLUDOw" target="_blank">
  <img src="https://github.com/kokchun/assets/blob/main/terraform/terraform_azure_setup.png?raw=true" alt="terraform setup" width="600">
</a>


This document is about setting up terraform for azure for windows and macos. the steps are to install terraform to your system followed by setting up Azure cli locally and then authenticating to Azure cli. 

<details> 

<summary><b>Windows setup terraform</b></summary>

Here are the steps to install Terraform on windows

1. Go into [this page and download](https://developer.hashicorp.com/terraform/install) the binary in windows for your particular system.  

2. Extract your zip file, and copy the terraform.exe file and go into "Program Files" - create a new folder and call it Terraform and paste this file into that folder. 

3. Go into "edit system environment variables", choose environment variables and click on path in system variables and click edit. Click new and add in the folder path to where your terraform.exe is. 

4. Go into powershell or git bash and type terraform version, if you get a version out it works.  

Here is a [video showing these steps above](https://www.youtube.com/watch?v=pySmwyRhx-A).

</details>

<br>

<details> 

<summary><b>Mac setup terraform</b></summary>

Use homebrew to install terraform, if you don't have Homebrew installed - [install it here](https://brew.sh/).

Run this command 

```
brew tap hashicorp/tap
```

then run this command 

```
brew install hashicorp/tap/terraform
```

</details>

## Setup Azure CLI 

Now it's time to install Azure CLI and build our first infrastructure in Azure. Terraform will depend on Azure CLI to perform acions into Azure. 

<details> 

<summary><b>Windows setup azure cli</b></summary>


In powershell or git bash, install Azure CLI

```powershell
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi
```

Authenticate to Azure CLI 

```powershell
az login
```

this will open a browser, and just login to your account. Now set your subscription in az cli.

```powershell
az account set --subscription "35akss-subscription-id"
```

Before working with terraform you should set your environment variable in the shell

```bash
$Env:ARM_SUBSCRIPTION_ID = "<SUBSCRIPTION_ID>"
```

</details>

<br>

<details> 

<summary><b>Mac setup azure cli</b></summary>


In terminal run this command to install azure cli 

```bash
brew update && brew install azure-cli
```

Authenticate to Azure CLI 

```bash
az login
```

Then set the account subscription 

```bash
az account set --subscription "35akss-subscription-id"
```


Before working with terraform you should set your environment variable in the shell or go into ~/.zshrc to set this 

```bash
export ARM_SUBSCRIPTION_ID="<SUBSCRIPTION_ID>"
```


The above instructures I have taken from 
[the official documentation here ](https://developer.hashicorp.com/terraform/tutorials/azure-get-started/azure-build) and simplified it


</details>

## Install terraform extensions in vscode

Here is all configurations for login to azure using azure-cli. Terraform will be using these information as well 

```bash
cd ~/.azure
```

Install terraform extensions in vscode. Search for it and install it.

## Build out your infrastructure

Lets build our infrastructure using terraform that is an infrastructure as code (IaC) tool. This means we don't need to go click on several resources in Azure portal to build them. 









## Resource 

- [Install terraform - Hashicorp](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)