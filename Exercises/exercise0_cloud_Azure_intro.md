# Exercise 0 - Cloud and Azure Fundamentals

> [!NOTE]
> These exercises covers lectures 00-04.


## 1. Understand IaaS and PaaS with the Azure SQL family
In lecture 03_Azure_intro, we briefly mention that you can choose IaaS and PaaS options from the Azure SQL family to host relational data in Azure. <br>

Suppose you are a data engineer and would like to make a suggestion to your manager about which option to choose, can you intuitively explain to your manager what are the responsibilities you are shared with Azure for different options? 

Read through the reference below to help you formulate your suggestion: <br>
🔍 [Azure SQL family provides IaaS and PaaS versions of SQL Server](https://learn.microsoft.com/en-us/azure/azure-sql/azure-sql-iaas-vs-paas-what-is-overview?view=azuresql) <br>

## 2. Create your first Window virtual machine
Follow [this video](https://www.youtube.com/watch?v=4TgwLKhLoCc) to create your first Window VM. For the VM size, choose *Standard D2s v3 (2 vcpus, 8 GiB memory)* instead. 

a) Can you explain how the configuration of Region and Availability Zone affect the uptime of your VM?

b) How many resources are created in your resource group when you create a VM? Can you guess what are they?

c) Explore the use of Bastion to connect to your VM. When the connection is successful, can you navigate within your VM and check your disk size?

>[!Warning]
>When you are done with question 2, remove the resource groups you have created to save credits!

## 3. Comparison with other cloud providers
### Computing services
In question 2, you have created a VM in your Azure subscription. Can you find out what are the equivalent products you can purchase from AWS (Amazon Web Services) and GCP (Google Cloud Platform)? What are the names of these products?

### Data stores
Similarly, check out descriptions of Amazon S3, Google Cloud Storage and Azure Blob Storage. What is the similar purpose that they are serving?