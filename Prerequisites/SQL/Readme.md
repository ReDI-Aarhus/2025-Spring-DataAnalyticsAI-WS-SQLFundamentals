# 🛢️ SQL Prerequisites (Student)

## Install & Configure

- **Install the SQL Server (mssql) extension**
  1. In VS Code, open the Extensions view (⇧⌘X / Ctrl+Shift+X).
  2. Search for **mssql** by Microsoft and click **Install**.
- **Create a connection to the cloud database**
  1. Open the **SQL Server** activity (left sidebar).
  2. Click **Add New Connection**.
  3. Enter the credentials your mentor provided:
     ```
     Server: <your-server>.database.windows.net
     Authentication: SQL Login
     User: <username>
     Password: <password>
     Database: <database-name>
     ```
  4. Save as a named profile (e.g. “CloudDB-Prod”) for reuse.

## Test to Confirm Setup

1. Open the `test_sql.sql` file in VS Code.
2. Make sure your new connection profile (“CloudDB-Prod”) is selected in the status bar.
3. Click **Run Query** (▶️) in the editor toolbar or right-click → **Execute Query**.
4. You should see a results grid with:
   ```sql
   SELECT 1 AS Test;
   ```

# Preparing SQL Database (Teacher)

- **Create Azure SQL Database**
  1. Use sample database: **AdventureWorksLT** 
  2. Open Firewall to classroom IP ranges 
      - (or allow all IPs: 0.0.0.0 - 255.255.255.255 )
  3. Create student login(s):
      ```sql
      -- Sample script to create user 
      -- =============================

      -- Step1: Create login & user
      -- Repeat step 1 for every additional user except "CREATE ROLE".

      -- In Master db: Create login
      CREATE LOGIN student01 WITH PASSWORD = 'StrongPassword!123';

      -- In sample db: Create user (name = login)
      CREATE USER student01 FOR LOGIN student01;

      -- In sample db: Create role
      CREATE ROLE student;
      
      -- In sample db: Add user to the role
      EXEC sp_addrolemember 'student', 'student01';

      -- =============================
      
      -- Step 2: Grant minimal, safe permissions to role

      GRANT SELECT TO student;
      GRANT CREATE VIEW TO student;

      ````