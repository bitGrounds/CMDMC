@echo off
cls
:start
cls
echo ------------------------------------
echo         MC Version: b1.7.3
echo       OptiFine (Ultra) Patched
echo Java version: JRE 1.8.0_362 Hotspot
echo  Java Build Type: Eclipse Adoptium
echo ------------------------------------
echo:
set /P x=Enter Username: 
set /P y=Enter Min Heap Size (Xms, in MBs): 
set /P z=Enter Max Heap Size (Xmx, in MBs): 
start java/bin/javaw.exe -Xms%y%m -Xmx%z%m -Djava.library.path="%CD%/bin/natives" -cp "%CD%/versions/mc.jar";"%CD%/bin/jinput.jar";"%CD%/bin/lwjgl.jar";"%CD%/bin/lwjgl_util.jar" net.minecraft.client.Minecraft %x%
echo You can now close this window.
pause
