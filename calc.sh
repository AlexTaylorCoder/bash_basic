echo "Bash calculator! Multiply, divide, add or subtract"
echo "Format should be x operation y"


arr=()
#Save user input to array, each space in input indicates new element
read expression
for i in $expression 
do
    arr+=($i)
done 
#Issue getting . and *  to be allowed from shell input
# bc allows floating point numbers
case ${arr[1]} in
    "x" )
    echo "scale=2; ${arr[0]}*${arr[2]}" | bc;;
    "/")
    echo "scale=2; ${arr[0]} / ${arr[2]}" | bc ;;
    "+" )
    echo "scale=2; ${arr[0]} + ${arr[2]}" | bc;;
    "-" )
    echo "scale=2; ${arr[0]} - ${arr[2]}"| bc;;
    "%" )
    echo $(( ${arr[0]} % ${arr[2]} ));; #Modulo will never have decimal value so dont need bc, nvm it can if input is decimal
    * ) 
    echo "None";;
esac
