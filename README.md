# cookiecutter-plugin.fish

> A :cookie: [cookiecutter] template for :fish: [fish] plugins

## Create a new project

To create a new project, run the following command:

```fish
pip install cookiecutter
cookiecutter gh:mattmc3/cookiecutter-plugin.fish
```

After you have run cookiecutter to create your new project, you can create an **empty** repo on GitHub, and then commit to that remote repo using the following method:

```fish
cd my-project
git init
git branch -M main
git add .
git commit -m "Initial commit"
set giturl https://github.com/(git config user.name)/(string split '/' $PWD)[-1].git
git remote add origin $giturl
git push -u origin main
```

## Example

```fish
set gituser (git config user.name)
mkdir -p ~/Projects/$gituser && cd ~/Projects/$gituser

cookiecutter gh:mattmc3/cookiecutter-plugin.fish
# project_name [my-project]:
# your_name [mattmc3]:
# gitrepo_owner [mattmc3]:
# git_domain [github.com]:

tree -a my-project
# my-project
# ├── .editorconfig
# ├── .gitignore
# ├── LICENSE
# ├── README.md
# ├── functions
# │   └── hello.fish
```

[cookiecutter]: https://github.com/cookiecutter/cookiecutter
[fish]: https://fishshell.com
