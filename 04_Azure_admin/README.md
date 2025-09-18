
# Managing Azure resources
Image if you work alone and develop only locally on your laptop, your cost is the price of your laptop that you had paid. If your laptop is running scripts slowly, you can check things like the current usage of CPU and RAM to troubleshooting the performance issue. You do not need to worry about access control either as you are the only one who can open your laptop with your username and password. 

But if your are using IT services via Azure, how do you manage you Azure resources, for instances, regarding access control, monitoring cost and performance?


## Identity & Access Management (IAM)
In a company, an Azure subscriptions including different resources are usually accessible and used by multiple users. As such, different users should have different permission levels to these resources, for example a user who can grant permissions to other users and another user who can only read the files in a storage account. Here's why Role-Based Access Control (RBAC) and Microsoft Entra ID come into play.

>[!Note] 
>According to the **principle of least privilege** of IT security, a user should only be granted the minimum permissions required to perform their tasks. Therefore, different users should have different permissions. 

- RBAC <br>
  In Azure, granting a user access to a resource means assigning a **role** with specific permissions to a user. Azure has several built-in roles with specific permissions ready for use. For instance, for a storage account container, a user with the built-in role **Storage Blob Data Reader** has the permission to list blobs stored inside the container and read them. Alternatively, one can create custom roles with specific permissions. 

  A user can also be assigned a role have certain privileges to a resource group as a whole, which means that the user can access all resources in that resource group. 
  
- Microsoft Entra ID
  If there are multiple users accessing resources under an Azure subscription, one can create and manage users' access via Microsoft Entra ID on Azure portal. Microsoft Entra ID partially serves as a comprehensive user directory but it has more features beyond this purpose. 

>[!Note] 
>In this course, as we are using free accounts with Azure for Students and do not manage multiple users, we will not cover much IAM. Note also that Microsoft Entra ID is not available for Azure for Students. 


🔍 [More on Azure RBAC](https://learn.microsoft.com/en-us/azure/role-based-access-control/overview)

## Monitoring cost
While cloud infrastructure generally has lower upfront cost, it is important to keep track of the usage-based cost by: 
- estimating cost: <br>
  before creating a resource, you should estimate the cost based on configuration and estimated usage of a resource. The online [pricing calculator](https://azure.microsoft.com/en-us/pricing/calculator/) is useful for this purpose.
- understanding current cost: <br>
  after creating resources, you can track the incurred cost under a subscriptioin on Azure portal. On Azure portal, after selecting a subscription, you can analyze incurred cost by navigating to *cost management* and cost analysis. You can then identify the most costly resources and find ways to cut cost.
- creating budget alerts: <br>
  in order to prevent unexpected high cost, you should create budget alerts to get notified when the incurred cost has exceeded an amount. you can create a budget alert for a subscription on Azure portal. After selecting a subscription, navigate to *cost management* and *budgets* to create a budget alert. 
  
<details>
  <summary>🧠 <b>Knowledge check</b></summary>
  Try create a budget alert.
</details>

🔍 [Tutorials on create and manage budgets](https://learn.microsoft.com/en-us/azure/cost-management-billing/costs/tutorial-acm-create-budgets?tabs=psbudget)



## Monitoring performance
If you reply on Azure resources to build your business applications, it is essential to monitor performance of these Azure resources. Azure generates perfomance data for its resources, provides different tools to analyze these data and enables alerts to be triggered if certain conditions of the resources are detected through these data. Azure Monitor offers a collection of features for this purpose. 

For example, if you are hosting a database server on an Azure VM and let users to query this database server, you need to track the CPU and memory comsumption of the VM. By analyzing this data, you can identify times of low performance and prevent possible downtime by scaling up the VM during peak period. Azure Monitor provides different monitoring features for different types of resources, such as computing and storage resources. 

Some key features available in Azure Monitor include:
- Metrics <br>
  Metrics are data describing some aspects of the status of a resource at regular intervals. An example of metrics data is the available memory of a VM. They are collected automatically. On Azure portal, after selecting an existing resource, you can use Metrics Explorer to plot chats from metrics. 
  
- Resource Logs <br>
  Resource logs are detailed data about the operation performed on a specific resource. For example, if you have a storage account container, you can collect logs on its delete, read and write operations. You need to create a diagnostic setting for a resource to collect log data and select where the data should be stored. On Azure portal, you can use Log Analytics to query and analyze the data.
 
- Alert <br>
  An alert rule is used to proactively detect issues of a resource. A rule can be fired when a certain condition is met in metric and log data. For example, if the CPU consumption of a VM reaches 70% of its capacity. Then, an action will be executed, like sending notification through emails. 

<details>
  <summary>🧠 <b>Knowledge check</b></summary>
  Browse through the metrics and resource logs for the storage account that you have created in lecture 3.
</details>

🔍 [More on Azure Monitor Metrics](https://learn.microsoft.com/en-us/azure/azure-monitor/metrics/data-platform-metrics) <br>
🔍 [More on Azure Monitor Resource Logs](https://learn.microsoft.com/en-us/azure/azure-monitor/platform/resource-logs?tabs=log-analytics) <br>
🔍 [More Azure Monitor Alerts](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview)

## Interacting with Azure 
You can create and manage Azure resources in different ways:

- GUI
  - [Azure portal](http://portal.azure.com): a web-based graphical user interface to interact with your Azure environments, as an alternative to command-line tools (i.e. writing commands)
- Command line tools
  - Azure CLI: uses Bash commands
  - Azure PowerShell: uses PowerShell commands
  - both can be installed locally and run in local shells,  or via Azure Cloud Shell which is a web-based shell tool

>[!Note] 
>For example, if you want to delete a resource group, then you can either use Azure CLI command:
>```
>az group delete -n RG01
>```
>or Azure PowerShell command:
>```
>Remove-AzResourceGroup -Name "RG01"
>```

- Infrastructure as Code (IaC) <br>
IaC refers to writing codes to define and deploy resources, making it possible to reproduce the same resources
  - Azure Resource Manager (ARM): Azure’s native service for deploying and managing resources using declarative syntax including:
    - ARM templates
    - Bicep files
  - Terraform: a popular third-party, multi-cloud CLI tool for IaC. Unlike ARM templates and Bicep files which are Azure-specific, Terraform can manage infrastructure across multiple cloud providers (Azure, AWS & GCP)
  
>[!Tip]
>Follow exercise 0.2 to explore interacting with Azure using Azure portal and create a resource group to include a VM as a resource. For subscription, you will be using the default subscription, *Azure for Students*, under your account. Note that there will be a guiding video on this exercise. So make sure you check out the file *exercise0_intro.md* for the video of this guiding exercise. 
