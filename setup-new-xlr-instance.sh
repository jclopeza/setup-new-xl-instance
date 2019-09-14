######################################################################
# | \ | | _____      __ (_)_ __  ___| |_ __ _ _ __   ___ ___ 
# |  \| |/ _ \ \ /\ / / | | '_ \/ __| __/ _` | '_ \ / __/ _ \
# | |\  |  __/\ V  V /  | | | | \__ \ || (_| | | | | (_|  __/
# |_| \_|\___| \_/\_/   |_|_| |_|___/\__\__,_|_| |_|\___\___|
######################################################################
#!/bin/bash
version_xlr=9.0.4
# Primero copiamos la licencia en su sitio
# Hecho, pendiente de automatizar

# Tercero creamos los enlaces simbólicos a los plugins
cd /opt/xebialabs/xl-release-${version_xlr}-server/plugins/__local__
ln -s ../../../plugins/xlr-slack-plugin-1.0.2.jar
ln -s ../../../plugins/xlr-servicenow-plugin-9.0.0.jar
ln -s ../../../plugins/xlr-remedy-plugin-3.0.2.jar
ln -s ../../../plugins/xlr-github-plugin-1.4.1.jar
ln -s ../../../plugins/xlr-ca-release-automation-plugin-1.3.3.jar
ln -s ../../../plugins/xlr-bamboo-plugin-1.1.4.jar

# Cuarto arrancamos XL Release y creamos las templates usando los blueprints. Esto para la calculadora

# Creamos equipos de trabajo
