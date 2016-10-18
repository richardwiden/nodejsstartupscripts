## one-time setup
mkdir -p ~/.local/bin
# prepend new path to PATH to give it priority
echo 'PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc
# then open new terminal or
source ~/.bashrc

## create a wrapper script
# $@ is there to passthrough args.
echo 'nice -10' `which npm` '$@' > ~/.local/bin/npm
# make it executable
chmod +x ~/.local/bin/npm

# check sanity
which npm
cat `which npm`
