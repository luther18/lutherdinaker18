for ((i = 0; i <=10; i++)); do      ## fill array with random values
    a[i]=$(($RANDOM % 699 + 100))
done
echo "${a[@]}"
largest=${a[0]}
smallest=${a[0]}
for j in "${a[@]}"
do
if [[ "$j" -lt "$smallest" ]]
then
smallest="$j"
fi
if [[ "$j" -gt "$largest" ]]
then
largest="$j"
fi
done
echo "largest num:" $largest
echo "smallest num:" $smallest
