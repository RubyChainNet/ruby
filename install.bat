@echo off

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

cd /d %~dp0

copy /y bin_win_x64\rubyz.exe c:\windows\
copy /y bin_win_x64\rubyi.exe c:\windows\

if exist c:\windows\rubyz.exe goto success
if not exist c:\windows\rubyz.exe goto fail

:fail

echo "Install Ruby for windows fail."

:success

echo "Install Ruby for windows successful."



pause

exit

