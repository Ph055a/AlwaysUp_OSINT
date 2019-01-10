echo "Install Started"
cd ~/AlwaysUp_OSINT/Tools
./server-setup.sh

echo "Pulling Docker Containers"
cd ~/AlwaysUp_OSINT/Docker
./pull_images.sh

echo "Installing ZSH"
cd ~/AlwaysUp_OSINT/ZSH
./oh-my-zsh.sh
mv .zshrc ~/
