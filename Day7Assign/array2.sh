array[0]=-1
array[1]=3
array[2]=-2
#array[3]=6
#array[4]=5
echo ${array[@]}
length=$((${#array[@]}))
echo $len

for ((i=0;i<$length;i++))
do
    first=$((${array[i]}))
    for ((j=$(($i+1));j<$length;j++))
    do
        second=$((${array[j]}))
        for ((k=$(($j+1));k<$length;k++))
        do
            third=$((${array[k]}))
            sum=$(($first+$second+$third))
            if [ $sum -eq 0 ]
            then
                echo "sum of " $first $second $third "is equal to Zero. "
            fi
        done
    done
done
