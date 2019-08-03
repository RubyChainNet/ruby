#!/bin/bash

echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@ ........ @@@@@@@@@@@@@@@@@@@@@@@@@@@@.....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@............@@@@@@@@@@@@@@@@@@@@@@@@@@.... @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@.............@@@@@@@@@@@@@@@@@@@@@@@@@.....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@............. @@@@@@@@@@@@@@@@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@.....@@.......@@@@@@@@@@@@@@@@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@.....@@@@.... @@@@@@@@@@@@@@@@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@ .....@@@@.....@@@@@@@@@@@@@@@@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@......@@@@.... @@@@@@@@@@@@@@@@@@@@@@@@....@....-@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@......@@@......@@@@....@@@@@@.....@@@@ ............@@@@ ....@@@@@@,....@@@@
echo @@@@@...... ........@@@@....@@@@@@....@@@@@..............@@@ .....@@@@@.....@@@@
echo @@@@@..............@@@@ ....@@@@@ ....@@@@@..............@@@@.....@@@@......@@@@
echo @@@@@............. @@@@.....@@@@@ ....@@@@@...............@@@.....@@@......@@@@@
echo @@@@@........... @@@@@@.....@@@@@.....@@@@@.....@@@@,.....@@@@.....@@.....@@@@@@
echo @@@@ ..........@@@@@@@@.....@@@@@.....@@@@@.... @@@@@.....@@@@.....@......@@@@@@
echo @@@@ ...........@@@@@@@.....@@@@@.....@@@@-....@@@@@@.....@@@@..... .....@@@@@@@
echo @@@@ ....@ .....@@@@@@@.....@@@@@....@@@@@ ....@@@@@@.....@@@@@.........@@@@@@@@
echo @@@@.....@@.....-@@@@@ .... @@@@.....@@@@@.....@@@@@@.....@@@@@.........@@@@@@@@
echo @@@@.....@@@.....@@@@@,....@@@@@ ....@@@@@.....@@@@@ .... @@@@@@.......@@@@@@@@@
echo @@@@.....@@@ .....@@@@ ....,@@@@.....@@@@@..... @@@@..... @@@@@@...... @@@@@@@@@
echo @@@@.....@@@@......@@@@.....@@@.....-@@@@@......@@@ .....@@@@@@@......@@@@@@@@@@
echo @@@@.... @@@@-..... @@@.............@@@@@@..............@@@@@@@@.....@@@@@@@@@@@
echo @@@@....@@@@@@......@@@ ............@@@@@.............. @@@@@@@ .... @@@@@@@@@@@
echo @@@@....@@@@@@@.....@@@@ ..........@@@@@@ .... ........@@@@@@@@.....@@@@@@@@@@@@
echo @@@@ ,, @@@@@@@ ,,, @@@@@  ......@@@@@@@@@..  @@......@@@@@@@@..... @@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,.....@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ .....@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@..... @@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.... @@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.....@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.....@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

echo ""

basepath=$(cd `dirname $0`; pwd)

cd $basepath

if [ "$(uname)" == "Darwin" ]; then

	echo "  The system is macosx."
	binpath=$basepath/bin/mac

elif [ "$(uname)" == "Linux" ]  && [ "$(uname -m)" == 'x86_64' ]; then

	if [ -d "/usr/lib64" ];then
		echo "  The system is just like centos-X64."
		sudo cp -rf bin/linux/lib/* /usr/lib64/
	fi

	if [ -d "/usr/lib" ];then
		echo "  The system is just like ubuntu-X64."
		sudo cp -rf bin/linux/lib/* /usr/lib/
	fi
	
	binpath=$basepath/bin/linux


elif [ "$(uname)" == "Linux" ] && [ "$(uname -m)" == "aarch64" ]; then
	
	echo "  The system is linux arm64."
	sudo cp -rf bin_linux/arm/lib/* /usr/lib/
	
	binpath=$basepath/bin/arm

else

	echo "  Ruby does not support your system."

fi

	sudo chmod +x $binpath/{rubyz,rubyi}


echo ""
echo "  ##<1>##  "
echo ""
echo "  Please choose the blockchain for cold node type."
echo ""
echo "    1 for ruby"
echo "    2 for testruby"
echo ""

read -p "  [1/2] " input

case $input in
        
        [1]*)
			bash -c "$binpath/rubyz ruby -outline -datadir=$basepath"
			echo ""
			echo "The ruby cold node started."
			echo ""
			echo "......Config Finished ###### "
			echo ""
			while read line
			do
			   echo $line
			done < $basepath/ruby/ruby.conf

			echo "                      "
			echo "Note: The cold node can not synchronize block,can not connet any peer,only use command for address and signature.You can only connect the cold node rpcport from localhost(127.0.0.1)."
			echo ""
			echo "The rpcpassword is init password,please edit the rpcpassword in ruby.conf for security reason."

			chain=ruby
			  
                ;;

        [2]*)
			bash -c "$binpath/rubyz testruby -outline -datadir=$basepath"
			echo ""
			echo "The testruby cold node started."
			echo ""
			echo "......Config Finished ###### "

			while read line
			do
			   echo $line
			done < $basepath/testruby/ruby.conf
			
			echo "                      "
			echo "Note: The cold node can not synchronize block,can not connet any peer,only use command for address and signature.You can only connect the cold node rpcport from localhost(127.0.0.1)."
			echo ""
			echo "The rpcpassword is init password,please edit the rpcpassword in ruby.conf for security reason."
			chain=testruby
	      	    ;;
        
        *)
                echo "Just enter 1 or 2, please."
                exit
                ;;
esac



sleep 5
echo ""
echo "  ##<2>##  "
echo ""
echo "You can connet the cold node from CLI now or exit,please choose."
echo ""
echo "    y for enter CLI-Manager"
echo "    n for nothing"
echo ""

read -p "  [y/n] " input

case $input in
        
        [y]*)
			
			echo ""
			echo "The cold node will auto enter CLI interactive mode,then you can type command for manager,please waiting... "
			sleep 3s
			bash -c "$binpath/rubyi $chain -datadir=$basepath"                
                ;;

        
        *)
                ;;
esac


sleep 3s
echo ""
echo "  ##<3>##  "
echo ""
echo "You can auto stop the chain or not,please choose"
echo ""
echo "    y for stop and exit"
echo "    n for nothing and exit"
echo ""

read -p "  [y/n] " input

case $input in
        
        [y]*)
			
			echo ""
			echo "The cold node will stop,please waiting... "
			sleep 3s
			bash -c "$binpath/rubyi $chain -datadir=$basepath stop "                
                ;;

        
        *)
                exit
                ;;
esac


