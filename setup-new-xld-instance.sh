######################################################################
# | \ | | _____      __ (_)_ __  ___| |_ __ _ _ __   ___ ___ 
# |  \| |/ _ \ \ /\ / / | | '_ \/ __| __/ _` | '_ \ / __/ _ \
# | |\  |  __/\ V  V /  | | | | \__ \ || (_| | | | | (_|  __/
# |_| \_|\___| \_/\_/   |_|_| |_|___/\__\__,_|_| |_|\___\___|
######################################################################
#!/bin/bash
version_xld=9.0.3
# Primero copiamos la licencia en su sitio
# Hecho, pendiente de automatizar

# Segundo, instalamos XL Deploy como servicio
# Hecho, pendiente de automatizar

# Tercero creamos los enlaces simbólicos a los plugins
cd /opt/xebialabs/xl-deploy-${version_xld}-server/plugins
ln -s ../../plugins/xld-aar-plugin-1.0.0.jar
ln -s ../../plugins/xld-requires-satisfies-environments-plugin-1.0.0.jar
ln -s ../../plugins/xld-smoke-test-plugin-1.0.5.xldp
ln -s ../../plugins/was-plugin-9.0.0.xldp
ln -s ../../plugins/was-plugin-extensions-9.0.0.xldp
ln -s ../../plugins/tomcat-plugin-6.2.0.xldp
ln -s ../../plugins/jbossdm-plugin-9.0.0.xldp
ln -s ../../plugins/jbossas-plugin-7.5.0.xldp

# Cuarto arrancamos XL Deploy y creamos la infraestructura base
# La infraestructura base está en el proyecto xld-scripts