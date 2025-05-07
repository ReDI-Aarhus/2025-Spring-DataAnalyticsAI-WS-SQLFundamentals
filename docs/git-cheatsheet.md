# Git Cheat Sheet for SQL Workshop

This guide will help you manage your work during the SQL Fundamentals workshop using Git and GitHub.

## ✅ General Structure

The repository is organized like this:

```
Root/
└── Exercises/
    └── Students/
        └── YourName/
            ├── 01_select_basics.sql
            ├── 02-joins.sql
            ├── 03-aggregates.sql
            ├── 04-final_challenge.sql
```

Each student will work inside their own folder only.

## ✅ Branching Convention

Each student creates a new branch for each exercise. Branches are named like this:

```
<student-name>/<exercise-name>
```

Examples:

* `alice/01_select_basics`
* `bob/02-joins`

## 🚀 Getting Started

### 1. Clone the Repository

Create a local folder path like: C:\Repos\sql-workshop

```bash
git clone https://github.com/ReDI-Aarhus/2025-Spring-DataAnalyticsAI-WS-SQLFundamentals.git
cd C:\Repos\sql-workshop
```
Open the folder in VS Code
### 2. Create Your First Branch

Replace `yourname` with your name:

```bash
git checkout -b yourname/01-select
```

### 3. Create Your Exercise File

```bash
mkdir -p students/yourname
cd students/yourname
touch 01_select_basics.sql
```

### 4. Add, Commit, and Push

```bash
git add students/yourname/01_select_basics.sql
git commit -m "yourname - SELECT basics"
git push -u origin yourname/01-select
```

## ⏭️ Next Exercises

Repeat this for each new task:

```bash
git checkout -b yourname/02-joins
# create and commit new SQL file in your folder
```

## 🔄 Switching Between Branches

```bash
git checkout yourname/01-select
```

## 📥 Fetching Updates from GitHub

```bash
git fetch origin
git checkout yourname/03-order
git pull origin yourname/03-order
```


