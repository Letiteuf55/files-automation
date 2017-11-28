@ECHO OFF
CLS
TITLE move STL
SETLOCAL
:boucle
ECHO EN ATTENTE DE TRAITEMENT
SET REP_IN=C:\moulinette


:encodage
FOR /f "delims=_SME." %%? IN ('DIR/b %REP_IN%\*.stl') DO (
ECHO Fichier %%? detecte dans %REP_IN% : test disponibilite...

"C:\sleep.exe" 2

move %REP_IN%\%%?.stl %%?\%%?.stl

goto :end
)

:encours
ECHO.
ECHO.
ECHO.
ECHO.
ECHO En Attente de fichier
ECHO.
ECHO.

:end
ENDLOCAL

"E:\sleep.exe" 5

goto boucle
