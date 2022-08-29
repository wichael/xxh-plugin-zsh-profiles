# This script will be executed ON THE HOST when you connect to the host.
# Put here your functions, environment variables, aliases and whatever you need.

CURR_DIR="$(cd "$(dirname "$0")" && pwd)"
build_dir=$CURR_DIR/build

touch /home/miw/.xxh/test
echo $CURR_DIR >> /home/miw/.xxh/test

cd $build_dir
tar -xvf xxh-plugin-zsh-profiles.tar .
rm -rf xxh-plugin-zsh-profiles.tar




# untar verything

# source $CURR_DIR/build/.*

