git clone https://github.com/bmbrina/Hephaestus.git ~/.hephaestus

hephaestus=$(echo $PATH | grep hephaestus)

if [ -z $hephaestus ]; then
    echo 'Adding Hephaestus to your path...'
    echo 'export PATH="$HOME/.hephaestus:$PATH"' >> ~/.bash_profile
    echo 'export PATH="$HOME/.hephaestus:$PATH"' >> ~/.bashrc
    echo 'export PATH="$HOME/.hephaestus:$PATH"' >> ~/.zshrc
fi

eval chmod +x hephaestus
echo 'Hephaestus is installed!'
echo 'Restart your terminal to start and happy coding!'
