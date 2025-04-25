# GitHub prequisities

### Option A: Using Git

- Clone the repo  
  . Open your terminal  
  . `git clone https://github.com/you/your-repo.git`  
  . `cd your-repo`

- Create & switch to a new branch  
  . `git checkout -b feature/my-change`

- Make changes & commit locally  
  . Edit files in your favorite editor  
  . `git status` to review changes  
  . `git add <file1> <file2>` (or `git add .` to stage all)  
  . `git commit -m "Short, descriptive message"`

- Push branch to GitHub  
  . `git push --set-upstream origin feature/my-change`

- Create a Pull Request  
  . (Option 1: Web) Visit your repo, click **Compare & pull request** button
  . (Option 2: CLI with GitHub CLI)  
   . `gh pr create --fill`

- Merge & clean up  
  . (Web) Click **Merge pull request**, then **Delete branch**  
  . (CLI)  
   . `gh pr merge --merge`  
   . `gh pr delete <PR-number>` (or `git push origin --delete feature/my-change`)

  ***

### Option B: Using GitHub (Web + VS Code)

- Clone to VS Code via GitHub UI  
  . On your repo page click the green **Code** button and choose “Open with VS Code”  
  . VS Code will open and clone automatically

- Create & Switch Branch in VS Code  
  . In the bottom-left branch picker click **New Branch**  
  . Enter a branch name and hit **Enter**

- Commit in VS Code & Push  
  . Edit files in the editor  
  . In Source Control view stage your changes  
  . Add a commit message and click ✔️ **Commit and Push**

- Start PR from VS Code  
  . After push, click the **Create Pull Request** notification  
  . Fill in title/description and hit **Create**  
  . This opens your PR in the browser

- Merge & Clean Up  
  . In the GitHub PR page click **Merge pull request**  
  . Choose **Delete branch** to tidy up
