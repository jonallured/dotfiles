tmpdir=~/.mutt/tmp
rm -f $tmpdir/*

filename=`basename $1`
newfile=$tmpdir/$filename
cp $1 $newfile

open $newfile
