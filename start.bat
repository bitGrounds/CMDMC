@ECHO OFF

:choice
echo -----------------------------------------------------------------------
echo                           AGREEMENT:
echo      This is CMDMC. The fact that this a cracked Minecraft launcher
echo means you are not supposed to start Minecraft like this. The Creator is 
echo       irresponsible for copyright issues. Do you Wish to Continue?
echo ------------------------------------------------------------------------
set /P c=Y: yes, N: no [Y/N]: 
if /I "%c%" EQU "N" goto :exit
if /I "%c%" EQU "Y" goto :start
goto :choice

:exit
echo "You did not agree to the agreement. The lancher will exit now..."
pause
exit

:start
echo ------------------------------------
echo         MC Version: b1.7.3
echo       OptiFine (Ultra) Patched
echo Java version: JRE 1.8.0_362 Hotspot
echo  Java Build Type: Eclipse Adoptium
echo ------------------------------------

set /P x=Enter Username: 
set /P y=Enter Min Heap Size (Xms, in MBs): 
set /P z=Enter Max Heap Size (Xmx, in MBs): 
start java/bin/java.exe -Xms%y%m -Xmx%z%m -Djava.library.path="%CD%/bin/natives" -cp "%CD%/versions/mc.jar";"%CD%/bin/jinput.jar";"%CD%/bin/lwjgl.jar";"%CD%/bin/lwjgl_util.jar" net.minecraft.client.Minecraft %x%