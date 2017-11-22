git clone https://github.com/bmbrina/Hephaestus.git chmod +x ~/.hephaestus

hephaestus=$(echo $PATH | grep hephaestus)

if [ -z $hephaestus ]; then
    echo 'Adding Hephaestus to your path...'
    echo 'export PATH="$HOME/.hephaestus:$PATH"' >> ~/.bash_profile
    echo 'export PATH="$HOME/.hephaestus:$PATH"' >> ~/.bashrc
    echo 'export PATH="$HOME/.hephaestus:$PATH"' >> ~/.zshrc
fi

echo 'Hephaestus is installed!'
echo 'Restart your terminal to start coding!'
