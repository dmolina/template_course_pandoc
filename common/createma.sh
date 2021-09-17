if [ "$#" -ne 2 ]; then
    echo "Missing argument: <topic> <asig>"
    exit
fi

tema=$1
asig=$2
dir=../$tema

if [ -d $dir ]; then
    echo "Directory '$dir' already exists"
    exit
fi

mkdir $dir || (echo "Cannot create directory '$dir'" && exit)
cp template.md $dir/${tema}.md
echo "TEMA=$tema" >$dir/makefile
echo "ASIG=$asig" >>$dir/makefile
cat makefile >>$dir/makefile

for file in *minted*; do
    ln -s $PWD/$file $dir/$file
done

mkdir $dir/figures
cd -

# Install packages
for package in pandoc-beamer-block pandoc-include pandoc-latex-fontsize; do
    pip install $package || (echo "Error installing package '$package' with pip"; exit)
done
