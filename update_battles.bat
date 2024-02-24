@echo off
rem delete the contents of the battle-combined folder if it exists
del battle-combined\*.* /q 2>nul
rem loop through each file in the battle-headers folder
for %%f in (battle-headers\*.*) do (
  rem copy the contents of the file and the battleglobal.tag file to a new file in the battle-combined folder
  copy /b %%f+global\battleglobal.tag battle-combined\%%~nxf
)
rem display the contents of the battle-combined folder
dir battle-combined