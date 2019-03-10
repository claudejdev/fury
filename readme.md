## Required tools

- VS Code (https://code.visualstudio.com/)
- Node (https://nodejs.org/en/)
- Git (https://git-scm.com/)
- pandoc (https://pandoc.org/installing.html)
- Make github account

# Get started

- Make sure all required tools are installed
- Open VS Code and Clone repo (ctrl+shift+p, type in clone, hit enter, paste this url: https://github.com/dwhiffing/fury.git)
- ctrl + ~ to open a terminal then enter `npm install`
- Once the install is finished, test out dev mode by running `npm start`

# To update site

- hit ctrl+shift+p, type 'pull' and hit enter
- Modify/Add word docs as necessary
- Run `npm build` to generate the content and html
- Open the 'fork' tab on the left side of VS Code
  - confirm all of your changes look as expected
  - update any index.yml files for positioning or labels, and discard any unwanted changes
  - add message at top and hit ctrl + enter to commit
  - Once all changes are commited, hit ctrl+shift+p, type 'push' and hit enter (make sure this is successful before proceeding, if it fails, it could be due to not pulling before making changes)
- Run `npm deploy` to copy changed files to server
