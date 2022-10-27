@echo off
title Converting ico files...

if "[%1]" equ "[-k]" goto :k

setlocal enabledelayedexpansion
for %%i in (*.jpg) do (
	set test=%%i
	echo.
	echo ffmpeg -y -i "!test!" -s 256x256 "!test:~0,-4!.ico"
	echo.
	ffmpeg -y -i "!test!" -s 256x256 "!test:~0,-4!.ico"
)
for %%i in (*.jpeg) do (
	set test=%%i
	echo.
	echo ffmpeg -y -i "!test!" -s 256x256 "!test:~0,-4!.ico"
	echo.
	ffmpeg -y -i "!test!" -s 256x256 "!test:~0,-4!.ico"
)
for %%i in (*.png) do (
	set test=%%i
	echo.
	echo ffmpeg -y -i "!test!" -s 256x256 "!test:~0,-4!.ico"
	echo.
	ffmpeg -y -i "!test!" -s 256x256 "!test:~0,-4!.ico"
)
endlocal
goto :eof

rem Keep Aspect Ratio
:k
setlocal enabledelayedexpansion
for %%i in (*.jpg) do (
	set test=%%i
	echo.
	echo ffmpeg -y -i "!test!" -vf "scale=w=256:h=256:force_original_aspect_ratio=1,pad=256:256:(ow-iw)/2:(oh-ih)/2:color=#00000000,format=rgba" "!test:~0,-4!.ico"
	echo.
	ffmpeg -y -i "!test!" -vf "scale=w=256:h=256:force_original_aspect_ratio=1,pad=256:256:(ow-iw)/2:(oh-ih)/2:color=#00000000,format=rgba" "!test:~0,-4!.ico"
)
for %%i in (*.jpeg) do (
	set test=%%i
	echo.
	echo ffmpeg -y -i "!test!" -vf "scale=w=256:h=256:force_original_aspect_ratio=1,pad=256:256:(ow-iw)/2:(oh-ih)/2:color=#00000000,format=rgba" "!test:~0,-4!.ico"
	echo.
	ffmpeg -y -i "!test!" -vf "scale=w=256:h=256:force_original_aspect_ratio=1,pad=256:256:(ow-iw)/2:(oh-ih)/2:color=#00000000,format=rgba" "!test:~0,-4!.ico"
)
for %%i in (*.png) do (
	set test=%%i
	echo.
	echo ffmpeg -y -i "!test!" -vf "scale=w=256:h=256:force_original_aspect_ratio=1,pad=256:256:(ow-iw)/2:(oh-ih)/2:color=#00000000,format=rgba" "!test:~0,-4!.ico"
	echo.
	ffmpeg -y -i "!test!" -vf "scale=w=256:h=256:force_original_aspect_ratio=1,pad=256:256:(ow-iw)/2:(oh-ih)/2:color=#00000000,format=rgba" "!test:~0,-4!.ico"
)
endlocal

title %ComSpec%

:eof
