# Crowdfunding ETL Analysis.
## *Purpose of the project*
The purpose of this project was to implement an Extract-Transform-Load (ETL) process on crowdfunding campaign data. Thus, the project was completed using three main tools: Jupyter Notebook, Python (including Pandas and Regex), and PostgreSQL. 

The process was implemented as described in this brief summary:

1. As a first step, the crowdfunding data was extracted and transformed using Jupyter Notebook and Python. The Pandas module was used to clean and transform the data, which can be reviewed in the "Extract-Transform_final_code.ipynb" file and in the files located in the "Practice_Files" folder.
2. After that, the data was loaded onto PostgreSQL. The ERD we used to create the database can be found in the "crowdfunding_db_relationships.png" file, while the schema to create each table can be found in the "Queries" folder as "crowdfunding_db_schema.sql". 
3. Lastly, PostgreSQL was used to further inspect the data. This allowed us to identify firstly, the amount of backers for live campaigns and, secondly, the contacts and backers for live campaigns who will be emailed in order to inform them of the remaining goal amounts for their respective campaigns. 

Don't hesitate to send a message in case you have any questions about this project. 