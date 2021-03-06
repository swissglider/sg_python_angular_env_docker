## SG_Python_Angular Environment Docker

![Base Architecture](https://github.com/swissglider/sg_python_angular_env_docker/blob/master/Base%20Architecture.png?raw=true "Base Architecture")

this is a docker for Developent Applications with:....

- Angular6
- Flaks-Python App
  
with Ports:
--> 80 / 443 for access Angular (for External Requests)
--> 5000 for access Flask (only for Angular) (open for devolping)

installed apps/libs:

- node.js
- npm
- yarn
- python
- pip
- flask
- angular


```sh
# build docker and start
docker build -t tt .
docker run -it --rm -p 4200:4200 -p 80:80 -p 443:443 -p 5000:5000 -e TZ=Europe/Zurich -v ~/developer/sg_python_angular_env_docker:/app -w /app tt bash

# install and start client
sh create_angular.sh

# start browser
http://localhost:4200

# clean
sh clean.sh
```

```sh
# test if angular is running
sh clean.sh
mkdir -p test_angular log
cd test_angular/
ng new angular6demo
cd angular6demo/
nohup ng serve --open --host 0.0.0.0 2>&1 >> /app/log/ng.log &
```
