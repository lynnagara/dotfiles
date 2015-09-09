files="vimrc gitconfig"

dir=~/dotfiles

cd $dir

for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file/.$file ~/.$file
done
