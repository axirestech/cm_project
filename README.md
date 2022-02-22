# The Contract Manager Project
- Repo name : cm_project
- Description: Create an NLP engine that parses contracts to retrieve relevant information
- Data Source: Contract Understanding Atticut Dataset
- Type of analysis: NLP

# Using Azure Board to track the projects' tasks
## Task planning is done here
https://dev.azure.com/axirestech/Contract%20Manager/_boards/board/t/Contract%20Manager%20Team/Backlog%20items
## Validating our tasks when you commit
There are two ways to link the work you commit to Github to the Azure Board tasks :
- Mention the task number in your commit message like this 'Updates AB#32'
- or mention the task number the same way when you create a pull request in Github 
You will then see a little Github icon on the task card linking back to your commits...👍 Ain't that cool or what ? 😜
If you mention 'Fixes' as in 'Fixes AB#32', the card will automatically be moved to the 'Done' section of the board.
How's that for tracking work that gets done ?

# Startup the project

The initial setup.

Create virtualenv and install the project:
```bash
sudo apt-get install virtualenv python-pip python-dev
deactivate; virtualenv ~/venv ; source ~/venv/bin/activate ;\
    pip install pip -U; pip install -r requirements.txt
```

Unittest test:
```bash
make clean install test
```

Check for cm_project in gitlab.com/{group}.
If your project is not set please add it:

- Create a new project on `gitlab.com/{group}/cm_project`
- Then populate it:

```bash
##   e.g. if group is "{group}" and project_name is "cm_project"
git remote add origin git@github.com:{group}/cm_project.git
git push -u origin master
git push -u origin --tags
```

Functionnal test with a script:

```bash
cd
mkdir tmp
cd tmp
cm_project-run
```

# Install

Go to `https://github.com/{group}/cm_project` to see the project, manage issues,
setup you ssh public key, ...

Create a python3 virtualenv and activate it:

```bash
sudo apt-get install virtualenv python-pip python-dev
deactivate; virtualenv -ppython3 ~/venv ; source ~/venv/bin/activate
```

Clone the project and install it:

```bash
git clone git@github.com:{group}/cm_project.git
cd cm_project
pip install -r requirements.txt
make clean install test                # install and test
```
Functionnal test with a script:

```bash
cd
mkdir tmp
cd tmp
cm_project-run
```
