# Git Cheat Sheet for SQL Workshop

This guide will help you manage your work during the SQL Fundamentals workshop using Git and GitHub.

## ✅ General Structure

The repository is organized like this:

```
Root/
└── exercises/
    └── students/
        └── your-name-here/ (<- rename this folder to your name!)
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

* `alice/01_select`
* `bob/02-joins`

## 🚀 Getting Started

### 1. Clone the Repository

Simple approach:

```bash
# Step 1: Create the directory if it doesn't exist. You can also do this manually in file explorer
mkdir -p /c/repos/sql-workshop

# Step 2: Navigate into the base directory where you want to store your repos
cd /c/repos/sql-workshop

# Step 3: Clone the GitHub repository into this directory
git clone https://github.com/ReDI-Aarhus/2025-Spring-DataAnalyticsAI-WS-SQLFundamentals.git

# Step 4: Navigate into the newly cloned repository folder
cd 2025-Spring-DataAnalyticsAI-WS-SQLFundamentals

# Step 5: Open the current folder in Visual Studio Code
code .

```
Open the folder in VS Code

Here's a more dynamic version designed for re-use:
```Bash
# Step 1: Set your base directory for all repos. 
BASE_DIR="/c/repos/redi"

# Step 2: Define the GitHub repo URL (change this to any repo)
REPO_URL="https://github.com/ReDI-Aarhus/2025-Spring-DataAnalyticsAI-WS-SQLFundamentals.git"

# Step 3: Extract the repo name from the URL (remove .git and everything before last '/')
REPO_NAME=$(basename -s .git "$REPO_URL")

# Step 4: Create the base directory if it doesn't exist
mkdir -p "$BASE_DIR"

# Step 5: Go to base directory
cd "$BASE_DIR"

# Step 6: Clone the repo
git clone "$REPO_URL"

# Step 7: Navigate into the cloned repo
cd "$REPO_NAME"

# Step 8: Open the folder in VS Code
code .

```
### 2. Create Your Branch

First, rename `your-name-here` folder with your name.
Then create your branch using the 

```bash
git checkout -b yourname/01-select
```

### 3. Complete Exercise & Save

Ideally, work inside the the .sql file associated with the branch name. Also if you are practicing something outside the scope of the exercise. 

### 4. Add, Commit, and Push

```bash
git add .
git commit -m "Completed SELECT basics exercise"
git push --set-upstream origin yourname/01-select
```

## ⏭️ Next Exercises

Repeat this for each new task:

```bash
git checkout -b yourname/02-joins
```

## 🔄 Switching Between Branches

```bash
git checkout yourname/01-select
```



## 🧪 Keeping Your Assignment Branch Up to Date with `main`

When the `main` branch is updated (e.g., with new starter code, bug fixes, or test cases), you should **update your own current branch** so you're working with the latest changes. 

This guide shows you how to **safely bring updates from `main` into your own branch** (e.g., `yourname/03-aggregates`).

---

### ✅ Steps to Rebase Your Branch with `main`

Run these commands in your terminal:

```bash
# Step 1: Save your work
git status    # Make sure everything is committed

# Step 2: Get the latest changes from GitHub
git fetch origin

# Step 3: Update your local main branch
git checkout main
git pull origin main

# Step 4: Switch back to your feature/assignment branch
git checkout yourname/03-aggregates

# Step 5: Rebase your work on top of the latest main
git rebase main
```

---

### 🧩 If You See a Conflict During Rebase

Git will pause and ask you to fix the files that conflict.

1. Open the conflicting file(s), and choose how to combine the changes.

2. After fixing each conflict, mark it resolved:

   ```bash
   git add <filename>
   ```

3. Then continue the rebase:

   ```bash
   git rebase --continue
   ```

Repeat until all conflicts are resolved.

---

### 🚀 Finally, Push Your Changes Back to GitHub

After rebasing, you need to push your changes:

```bash
git push --force-with-lease
```

> ⚠️ This is safe **only if you're the only one working on your branch.**

---

### 💡 Why Rebase?

* Keeps your branch history clean
* Makes it look like you started from the latest version of `main`
* Avoids messy merge commits


