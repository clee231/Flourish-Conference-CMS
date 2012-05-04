#!/bin/bash
usage()
{
    echo "usage ${0} [options] command <command options>"
    echo " general options:"
    echo "    -u               MySQL User "
    echo "    -p               MySQL Pass"
    echo "    -H               Hostname"
    echo "    -d               database name"
#    echo "    -l               URL "
    echo "    -h               This message"
    exit $1
}

doSanityCheck()
{

   if  test  "${DBUSER:+1}"; then
       echo "DBUSER: ${DBUSER}"
   else
       echo "ERROR: DBUSER is not set"
       usage 1
   fi

   if  test  "${DBPASS:+1}"; then
       echo "DBPASS: ${DBPASS}"
   else
       echo "ERROR: DBPASS is not set"
       usage 1
   fi

   if  test  "${DBHOST:+1}"; then
       echo "DBHOST: ${DBHOST}"
   else
       echo "ERROR: DBHOST is not set"
       usage 1
   fi

   if  test  "${DBNAME:+1}"; then
       echo "DBNAME: ${DBNAME}"
   else
       echo "ERROR: DBNAME is not set"
       usage 1
   fi

   #if  test  "${URL:+1}"; then
   #    echo "URL: ${URL}"
   #else
   #    echo "ERROR: URL is not set"
   #    usage 1
   #fi




}

initializeDirectoryStructure()
{
  mkdir $BASE/templates_c
  chmod a+wrx  $BASE/templates_c
  cp ${BASE}/configs/default-template.conf ${BASE}/configs/config.php
  echo "Please edit ${BASE}/configs/config.php and update configuration options as appropriate"


}

writeConfig()
{
    echo "Updating $BASE/config.php with given parameters"
    sed -e "s/dbname.*/dbname=\"${DBNAME}\"/" -e "s/dbhost.*/dbhost=\"${DBHOST}\"/" -e "s/dbpasswd.*/dbpasswd=\"${DBPASS}\"/" -e "s/dbuser.*/dbuser=\"${DBUSER}\"/"  ${BASE}/config-template.php > ${BASE}/config.php
    #echo "Updating $BASE/configs/default.php with given parameters"

    #sed -e  "s/ROOT.*/ROOT = $URL/" ${BASE}/configs/default-template.conf 

}

main()
{
    SCRIPTDIR=$(dirname $0)
    BASE="$SCRIPTDIR/../"
    export BASE
    export SCRIPTDIR

    #
    echo "attempting to creating database"
    echo "CREATE DATABASE IF NOT EXISTS ${DBNAME}" | mysql -u ${DBUSER} -p${DBPASS} -h ${DBHOST} 
    echo "installing DB Schema and initial sample data"
    cat ${SCRIPTDIR}/structure.sql | mysql -u ${DBUSER} -p${DBPASS} -h ${DBHOST} ${DBNAME}

    if [ "$?" -ne 0 ]; then
        echo "failed to load database, rolling back and aborting ";
    fi
    initializeDirectoryStructure
    writeConfig

    echo "############### VERY IMPORTANT #############"
    echo "rename admin/htaccess to .htaccess and make sure your browser is configured to use the credentials."
    echo "for more info see:  http://httpd.apache.org/docs/current/howto/htaccess.html " 

}

while getopts 'u:p:d:H:l:h' arg; do
    case "${arg}" in
        u) DBUSER="${OPTARG}" ;;
        p) DBPASS="${OPTARG}" ;;
        H) DBHOST="${OPTARG}" ;;
        d) DBNAME="${OPTARG}" ;;
#        l) URL="${OPTARG}" ;;
        h|?) usage 0 ;;
        *) echo "invalid argument '${arg}'"; usage 1 ;;
    esac
done

doSanityCheck
main
