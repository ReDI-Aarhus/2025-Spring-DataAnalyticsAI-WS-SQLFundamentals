# 🛢️ SQL Prerequisites

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
