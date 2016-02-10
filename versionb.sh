file=$1
nfile=$(echo "$file" | tr "." " ")
for var in $nfile
do
	exp=$var
done
fname=$(basename $file $exp)
fname1=$(basename $fname '.')
d=$(date +'%Y-%m-%d')
touch "$fname1"_"$d"."$exp"
