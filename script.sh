if [ -z $1 ]
then
  echo "Need argument for specifying directory to be executable"
  exit 1
fi

# list all markdown files inside of the provided directory
find $1 -name '*.md' > filelist.dat 

while read file
do
    # this command will transform filename by changing extension
    html_file="$( echo "$file" | sed -e 's/\.md//g').html"

    node ./node_modules/showdown/bin/showdown makehtml -i "$file" -o "$html_file"

done < filelist.dat

# delete the temporary file finally
rm filelist.dat
