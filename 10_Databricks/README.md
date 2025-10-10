# Databricks


## About this lecture
This lecture provides 
- a brief introduction of Databricks and,
- a hands-on exercise to set up Databricks trial account and process data with PySpark


## Brief introduction of Databricks
Databricks is a **unified** platform serving different purposes in a data architecture, which means that different roles working with data in a company, such as those working with data analysis, data engineering, data science, data governance, can work with the same platform. Below are some key features that Databricks as a single platform can serve:

- Workspace <br>
  is the central hub for accessing all data assets and computing resources, representing an environment
- Notebook <br>
  is a web-based interface for running codes which is good for real-time collaboration
- Cluster <br>
  is a set of computing resources
- Unity Catalog <br>
  is a data catalog for data discovery, data lineage and access control
- Apache Spark <br>
  is a fast, distributed engine for big-data processing
- PySpark <br>
  is Spark's Python API
- Cloud object Storage <br>
  is the primary data stores used in Databricks. It can be AWS S3, Azure Blob Storage and GCP Cloud Storage
- Delta Lake <br>
  is the storage layer upon cloud object storage that supports ACID 
- Delta Table <br>
  is the specific data table stored in Delta Lake format 
- Lakeflow Jobs <br>
  functions as an orchestrator for pipeline
- Git Folders <br>
  is used for version control
  

🔍 [Databricks components](https://docs.databricks.com/aws/en/getting-started/concepts) 

🔍 [Navigate the workspace](https://docs.databricks.com/aws/en/workspace/)


## Hands-on session
Under the hands-on session of this lecture, we will set up a Databricks trial account and create scripts in the account for processing data with PySpark. After creating an account, you can navigate to your *workspace* and create a *notebook* to start coding. 

##### Step 1- Create a trial account
Follow the instruction below to open a trial account. The trial account DOES NOT require any credit card information. It will last for 14 days. You will then be redirected to your workspace. 

🔍 [Instruction to create Databricks trial account](https://docs.databricks.com/aws/en/getting-started/express-setup#trial-limits)

>[!Note]
Alternatively, you can create a workspace under your Azure subscription. Then, you will be charged with your Azure credits. 

##### Step 2- Create a notebook
On your workspace, on the left upper corner, click on *+New* to creata a new notebook. Then, you can start coding in PySpark. 

Follow the materials below and practice PySpark syntax. The materials will show you how to access sample data in the Databricks workspace. 

🔍 [Key Apache Spark concepts](https://docs.databricks.com/aws/en/pyspark/)

🔍 [PySpark basics tutorial](https://docs.databricks.com/aws/en/pyspark/basics)

>[!Note]
When working with Apache Spark in step 2, note that you DO NOT need to initiate and configure a Spark session, which is automatically handled by Databricks.

## Other explorations
After the hands-on session on PySpark on a notebook, can you navigate through your workspace UI and find other features mentioned in the previous section *Brief introduction of Databricks*? Explore their usage if you are interested to learn more about Databricks.