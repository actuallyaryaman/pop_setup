# pop_setup
pop_os! initial setup scripts for people who want PLASMA DESKTOP ENVIRONMENT

# Clone repository
Execute the following command:
```sh
git clone https://github.com/actuallyaryaman/pop_setup.git && cd pop_setup
```
## Update .bashrc
Execute following command:
For bash:
```sh
curl -l https://raw.githubusercontent.com/actuallyaryaman/pop_setup/main/bashrc.patch >> ~/.bashrc 
```
For zsh:
```sh
curl -l https://raw.githubusercontent.com/actuallyaryaman/pop_setup/main/bashrc.patch >> ~/.zshrc
```

## Running the setup script:
Make the setup script executable:

```sh
chmod a+x setup.sh
```

Run the script:

```sh
sudo ./setup.sh
```
