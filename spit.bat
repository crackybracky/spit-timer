@echo off 
REM : Timer that tells you when to spit :D
REM : I made this because it's ridiculous how stupid i sound when my throat is slimey. (ugh...)
REM : Spit sound is from Half-Life by Valve Software btw. (bc_attack1.wav)
REM : Made by crackybracky (C) 7/31/2023
REM : Version 1.1, added a new name change and neater formatting on welcome user :D

TITLE SpitTime 1.1

REM : welcome user
cls
echo[
echo Welcome to SpitTime! Make sure to spit every time you hear a spit!
echo Otherwise you're gonna sound like a stupid little bitch!!!
echo[
pause

REM : Begin 15 sec timer and call embedded vbs script
:timer:
cls
timeout /t 15 /nobreak
cls
echo[ 
echo SPIT AND DONT SWALLOW!!!
cscript //nologo "%~f0?.wsf" %1
goto timer

REM : Script that plays the "spit" sound. Requires a file named spit.wav unless you change this to something else.
REM : This might not be the case anymore, because i'm packaging this alongside the spit.wav via iexpress lol.

----- Begin script --->
<job><script language="VBScript"> 
        Dim oPlayer
        Set oPlayer = CreateObject("WMPlayer.OCX")

        ' Play audio
        oPlayer.URL = "spit.wav"
        oPlayer.controls.play 
        While oPlayer.playState <> 1 ' 1 = Stopped
          WScript.Sleep 100
        Wend

        ' Release the audio file
        oPlayer.close               
</script></job>
REM : Have a good day mate and remember to clear ur throat!!! :)
