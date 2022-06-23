read -p "Enter the Value :" num

#Feet to Inch
inInches=$(( $num * 12 ))
echo $inInches

#Inch to Feet
infeets=`awk 'BEGIN { printf("0.2f" , '$num'/12 )}'`
echo $inFeets

#Feet to Meter
feetTometer=`awk 'BEGIN { printf("%0.2f", '$num' * 0.3048)}'`
echo $FeetToMeter

#Meter to Feet
meterToFeet=`awk 'BEGIN { printf("%0.2f", '$num' * 3.2800)}'`
echo $meterToFeet
