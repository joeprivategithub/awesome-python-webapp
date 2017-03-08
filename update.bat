@Echo Off

for /f %%i in ('openssl rand -base64 33') do (
  set rand_char=%%i
)
git add .
git commit -am "%rand_char% ## %DATE:~5,2%/%DATE:~8,2%/%DATE:~0,4% %TIME:~0,2%:%TIME:~3,2%:%time:~6,2%" 
git push -u origin master
