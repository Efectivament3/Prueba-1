#!/bin/bash
# Basic  counter and its variations
# Este progama basico, trbajaremos comando basicos, el programa sera dividio en 4 tipo de contadores, cado uno con sus caracteristicas o  "features, en cada caso particual se explicara la caractreristicas del mismo y se el dara unas opciones al usuario 
# Una discula de ante mano por la Ortografia  :P
 # declaramos una funcion para no copiar y pegar lo mismo inifnitas veces
# Ademas vamos a declarar super vriables, las cuales seran las calculadoras por separado, luego mosntraremos
# el main menu en la pantalla

basic_counter() {
# en este contador, el sistema contara de el 1 al 100, es el mas basico
while true; do

	    echo "You choose option 1"
	    echo "We are going to count from 1 to 100 without any feature"
	    echo "So lets start"
sleep 3
		for number in {1..100}
		do
	   	 echo "Counter: $number"
		done
	echo "as you saw the task was done susccesfully, would you like to return to the main menu?"
	echo "YES/NO"

		read ex1t
		case $ex1t in
			YES)
				echo  "going back to the menue"
				break
			;;
			NO)
				echo "Shutthing down the program"
				exit
			;;
			*)
				echo "Invild enter, type YES/NO"

		esac
done
}
#----------------------------------------------------------------------------------------------------------
medium_counter() {
# en este contador, el sistema contara de el 1 al 100, mostrando los numero pares
while true; do

	    echo "You choose option 2"
	    echo "We are going to count from 1 to 100 only showing the pair numbers"
	    echo "So lets start"
sleep 3
		paircounter=1 #desde donde empezamos a contar

		while [ $paircounter -le 100 ] #para saber hasta que numero contamos
		do
	    		if [ $((paircounter % 2)) -eq 0 ] #cuando el residuo de la divison es 0 se muestra el numero en la pantalla
		    	then
        			echo $paircounter
   			 fi

    		paircounter=$((paircounter + 1))
done
	echo "as you saw the task was done susccesfully, would you like to return to the main menu?"
	echo "YES/NO"

		read ex1t
		case $ex1t in
			YES)
				echo  "going back to the menue"
				break
			;;
			NO)
				echo "Shutthing down the program"
				exit
			;;
			*)
				echo "Invild enter"

		esac
done
}
advance_counter() {
# en este contador, el sistema contara de el 1 al 100, ademas se le preguntara al usuario hasta donde quiere contar
while true; do

	    echo "You choose option 3"
	    echo "In this counter you can choose until what number we are going to count"
            echo "It needs to be a possitive number and no bigger than 100 diffent of cero"
		read -p "Type a number: " optionelected

	until [[ "$numero" =~ ^[0-9]+$ ]] && [ "$numero" -gt 0 ] && [ "$numero" -le 100 ]
	do
    echo "Invalid number"

    read -p "Type Cagain: " optionelected
done

echo "Valid number"
sleep 3
	    echo "We are going to count from 1 to $optionelected"
	    echo "So lets start"
sleep 4
		for ((number=1; number<=optionelected; number++)) #emepezamos desde el numero 1 con el number=1 y luego el numero va hasta donde el usuario indico, y luego inicia el contador, sumandole 1 con los simbolos ++
		do
    		echo "Counter: $number"
		done
	echo "as you saw the task was done susccesfully, would you like to return to the main menu?"
	echo "YES/NO"

		read ex1t
		case $ex1t in
			YES)
				echo  "going back to the menue"
				break
			;;
			NO)
				echo "Shutthing down the program"
				exit
			;;
			*)
				echo "Invild enter"

		esac

done
}
basic_counter() {
# en este contador, el sistema contara de el 1 al 100, es el mas basico
while true; do

	    echo "You choose option 1"
	    echo "We are going to count from 1 to 100 without any feature"
	    echo "So lets start"
		for number in {1..100}
		do
	   	 echo "Counter: $number"
		done
	echo "as you saw the task was done susccesfully, would you like to return to the main menu?"
	echo "YES/NO"

		read ex1t
		case $ex1t in
			YES)
				echo  "going back to the menue"
				break
			;;
			NO)
				echo "Shutthing down the program"
				exit
			;;
			*)
				echo "Invild enter"

		esac

done
}

#--------------------------------------------------------------------------------------------------------------------

main_menu() {

while true; do
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo	"Hello there! this a simple code with 4 programs that each counts from  1 to 100, but with some differeces from each other"

	echo	"---------------"
	echo	"        ////// COUNTER///////                By Efectivamet3 :p"
	echo	"---------------"
	echo	"Choose from 1 to 5 to choose your type of counter"
	echo 	"/////////////////////////////////////"
	echo	"      1.Basic(from 1 to 100)"
	echo	"      2.Medium(only pair numbers)"
	echo	"      3.Advance(aks to stop in a specific value)"
	echo	"      4.Master()"

	# Hacemos que el usario escoja un tipo de contador

	read option  # El sistema leera, la opcion

	case  $option in # se desplegara una calcualdora, o case de las 4 segun la opcion escogida

	  1)basic_counter # muestra la super variable declarada con las lineas del contador basica
		;;
	  2)medium_counter # muestra la super variable declarada con las lineas del contador medium
		;;
	  3)advance_counter # muestra la super variable declarada con las lineas del contador advance
		;;
	  4)master_counter # muestra la super variable declarada con las lineas del contador master
		;;
  	  *)echo "Opción inválida"
		;;
	esac
	done
}


main_menu # mostramos el progama en la pantalla
