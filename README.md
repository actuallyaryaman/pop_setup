# pop_setup_PLASMA
pop_os! initial setup scripts for people who want PLASMA DESKTOP ENVIRONMENT

# Clone repository
Execute the following command:
```sh
git clone https://github.com/actuallyaryaman/pop_setup.git && cd pop_setup
```
## Update .bashrc
Execute following command to add the allias for popular apt commands:
For bash(recommended):
```sh
curl -l https://raw.githubusercontent.com/actuallyaryaman/pop_setup/main/bashrc.patch >> ~/.bashrc 
```
For zsh:
```sh
curl -l https://raw.githubusercontent.com/actuallyaryaman/pop_setup/main/bashrc.patch >> ~/.zshrc
```
install oh-my-zsh(optional):
```sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" ```

## Running the setup script:
Make the setup script executable:

```sh
chmod a+x setup.sh
```

Run the script:

```sh
sudo ./setup.sh
```
