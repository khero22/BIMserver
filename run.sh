#!/bin/bash -e

if [[ -z "$TOMCAT_USER" ]]; then
	>&2 echo "Veuillez spécifier un nom d'utilisateur pour la  variable d'environnement: TOMCAT_USER"
    exit 1
fi

if [[ -z "$TOMCAT_PASSWORD" ]]; then
	>&2 echo "Veuillez spécifier un mot de passe pour la  variable d'environnement:TOMCAT_PASSWORD"
    exit 1
fi

cat <<EOF > /opt/tomcat/conf/tomcat-users.xml
<?xml version='1.0' encoding='utf-8'?>
<tomcat-users xmlns="http://tomcat.apache.org/xml"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
              xsi:schemaLocation="http://tomcat.apache.org/xml tomcat-users.xsd"
              version="1.0">
  <user username="${TOMCAT_USER}" password="${TOMCAT_PASSWORD}" roles="manager-gui,admin-gui"/>
</tomcat-users>
EOF

/opt/tomcat/bin/catalina.sh run
