crumb=$(curl -u "liloucha:LJ.j40408041iloucha" -s 'http://172.31.4.46:2222//crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
echo "$crumb"
echo "***************************"
curl -u "liloucha:LJ.j40408041iloucha" -H "$crumb" -X POST http://172.31.4.46:2222/job/ansibleENV/build?delay=0sec
#curl -u "liloucha:LJ.j40408041iloucha"  -H "$crumb" -X POST  http://172.31.4.46:2222/job/webserverDisplay/buildWithParameters?MINAGE=60&MAXAGE=60

