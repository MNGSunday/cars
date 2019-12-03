#! /bin/bash
# cars.sh
# Marc Domingo

choice=0

while [ "$choice" -lt 3 ]
do
	echo "Type '1' if you would like to enter a new car"
	echo "Type '2' if you would like to display the list of cars"
	echo "Type '3' if you would like to quit and exit the program"
	echo -n "Enter a number from 1 to 3:"
	read choice

	case "$choice" in
		"1") echo "Enter the year of the new car:"
			read year
			echo "Enter the make of the new car:"
			read make
			echo "Enter the model of the new car:"
			read model
			car_string="$year:$make:$model"
			echo "$car_string" >> My_old_cars;;

		"2") sort My_old_cars;;

		"3") echo "Goodbye";;
	esac
done
