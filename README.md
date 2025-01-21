```bash
export $user=red
mkdir git
cd git
git clone git@github.com:Acestus/workspace24.git
git clone git@github.com:Acestus/config.git
sudo apt update
sudo apt install -y fish
sudo apt install -y build-essential zlib1g-dev libssl-dev libreadline-dev liblzma-dev
sudo apt install -y libsqlite3-dev libffi-dev libbz2-dev
curl -sS https://webi.sh/webi | sh;
mkdir ~/.config/envman
touch ~/.config/envman/PATH.env
source ~/.config/envman/PATH.env
webi lsd 
webi powershell
webi pyenv
webi nerdfont
curl -s https://ohmyposh.dev/install.sh | bash -s
rm -rf ~/.bashrc
ln -s ~/git/config/.bashrc ~/.bashrc
rm -rf ~/.config/nvim
ln -s ~/git/config/nvim ~/.config/nvim
rm -rf ~/.config/fish
ln -s ~/git/config/fish ~/.config/fish
rm -rf ~/.config/oh-my-posh
ln -s ~/git/config/oh-my-posh ~/.config/oh-my-posh
ln -s ~/git/config/Microsoft.PowerShell_profile.ps1 /home/$user/.config/powershell/Microsoft.PowerShell_profile.ps1
```
