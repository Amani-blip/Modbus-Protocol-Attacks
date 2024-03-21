# Modbus-Protocol-Attacks

## Steps to use modbus TCP SCADA dataset
- Download the captures from [shared drive](https://uottawa-my.sharepoint.com/personal/afari094_uottawa_ca/_layouts/15/guestaccess.aspx?share=EsTbzVM4BLlOqjE5IX5xlv4B2w52UnSoTiSWT6cIDrBjEg&e=PgP5Gc)
- Move the downloaded captures to the cloned git repository
- Interact with data using the available Jupyter Notebooks

## DBMS
We created our data mart using PostgreSQL DBMS and used pgAdmin4 as our development platform. Please ensure you have these installed. 
### Steps for creating the dimensions
This database is currently not hosted. You will need to create your own instances by running the populate SQLs.
1. Create tables for the network capture CSVs
2. Import the CSV data into its associated table (See step below)
3. ![image](https://github.com/Amani-blip/Modbus-Protocol-Attacks/assets/72065434/23e9fde1-65a0-4072-852e-fd8c70732607)
4. Run the queries to populate the dimensions

