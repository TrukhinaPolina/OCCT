@echo off
:BegLoop
set /P number=enter number
if %number% ==- goto exitloop
if not defined min set min=%number%
if not defined max set max=%number%
if %number% leq %min% set min=%number%
if %number% leq %max% set max=%number%
goto BegLoop
:exitloop
echo min=%min%
echo max=%max%