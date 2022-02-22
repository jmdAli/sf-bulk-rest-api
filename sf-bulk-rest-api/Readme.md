This code provides an ability to retrieve records from Salesforce using Bulk API V2(REST) and writes the records in a file which provides following benefits.
- Ability to retrieve records in batches which is not available with Salesforce Connector which enables this code to fetch millions of records without any performance issues.
- Ability to generate new reports by adding SOQL queries to property files and redeploying the code.(No change to code required)
- Resource requirements are less as compared to Salesforce Connector.
- Performance vetted for a client where Similar code with a Salesforce connector was having issues whereas batch mode minimized the core requirements by 75% for fetching 2 million records.
Configuration Steps:
1. Updated the dev.yaml with salesforce connection  details.
2. Insert the SOQL  in dev.yaml.
3. insert the DataFeedBatchSize, This field is used to download the number of records from SF .
4. Configure file repository as per the business requirements and change the code to write the files to the file server.
   
Enhancement Scopes:
- SOQL queries can externalized to cloud storage/database to reduce the number of deployments after each change.
- Logic can be enhanced to generate different types of output files(e.g. .csv,.txt,.dat etc) based on business needs.
- Client can choose their own file server/Destination and code can be enhanced to send the data to destination.