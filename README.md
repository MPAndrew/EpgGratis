# EpgGratis
EPG para Movistar+ en Kodi. El archivo xml contiene 7 días de programación. 
La guía incluye información de los canales de Movistar+, ServusTV, Sport1 y ZFDinfo.

# <b>LibreELEC / CoreELEC</B>
- Descargar el archivo <i>"tv_grab_EpgGratis"</i> a la siguiente ruta: 
```
wget -P /storage/.kodi/addons/service.tvheadend42/bin/ https://raw.githubusercontent.com/MPAndrew/EpgGratis/master/tv_grab_EpgGratis
```
- Dar permisos de ejecución:
```
chmod 755 /storage/.kodi/addons/service.tvheadend42/bin/tv_grab_EpgGratis
```
- Reiniciar TVheadend y activar el grabber:
```
Configuración - Canal/EPG - Módulos para obtención de guía - Interno: XMLTV : tv_grab_EpgGratis
```
- Configurar el cron de TVheadend para que se ejecute todos los días a las 9:10.
```
# Se ejecuta todos los días a las 9:10
10 9 * * *
```
- Pulsar el botón: <i>"Volver a ejecutar los capturadores de EPG internos".</i>

# <b>Docker: linuxserver/tvheadend</B>
La imagen de docker linuxserver/tvheadend (https://hub.docker.com/r/linuxserver/tvheadend/) incluye varios grabber. Uno de ellos es <i>"WebGrab+Plus XML file grabber"</i> y apunta al archivo <i>"/config/data/guide.xml"</i> así que tenemos que colocar el archivo .xml allí.

Para ello hay que seguir los siguientes pasos:
- Crear una carpeta llamada <i>"data"</i> dentro de la carpeta <i>"config"</i>
```
mkdir /RUTA_CONTENEDOR/config/data
```

- Crear tarea programada en vuestro servidor con los siguientes comandos para que se ejecute cada día a las 9:00:
```
wget -qO /RUTA_CONTENEDOR/config/data/guide.xml.gz https://github.com/MPAndrew/EpgGratis/raw/master/guide.xml.gz
gunzip -f /RUTACONTENEDOR/config/data/guide.xml.gz
```

- Una vez programada la tarea, activar el grabber <i>"XMLTV: WebGrab+Plus XML file grabber"</i>, desactivar los demás y programar el cron de TVheadend para que se ejecute todos los días a las 9:10:
```
# Se ejecuta todos los días a las 9:10
10 9 * * *
```
- Pulsar el botón: <i>"Volver a ejecutar los capturadores de EPG internos".</i>

# <b>Linux / Synology </B>
- Descargar el archivo <i>"tv_grab_EpgGratis"</i> en /usr/bin:
```
sudo wget /usr/bin/tv_grab_EpgGratis https://raw.githubusercontent.com/MPAndrew/EpgGratis/master/tv_grab_EpgGratis
```
- Dar permisos de ejecución al grabber:
```
sudo chmod 755 /usr/bin/tv_grab_EpgGratis
```
- Reiniciar TVheadend y activar el grabber:
```
Configuración - Canal/EPG - Módulos para obtención de guía - Interno: XMLTV : tv_grab_EpgGratis
```
- Programar el cron de TVheadend para que se ejecute todos los días a las 9:10.
```
# Se ejecuta todos los días a las 9:10
10 9 * * *
```
- Pulsar el botón: <i>"Volver a ejecutar los capturadores de EPG internos".</i>

# Imágenes
![alt text](https://raw.githubusercontent.com/MPAndrew/EpgGratis/master/images/canales.png)
![alt text](https://raw.githubusercontent.com/MPAndrew/EpgGratis/master/images/guia.png)