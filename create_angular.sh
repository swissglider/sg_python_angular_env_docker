sh clean.sh
mkdir -p test_angular log
cd test_angular/
ng new angular6demo
cd angular6demo/
nohup ng serve --open --port 80 --host 0.0.0.0 2>&1 >> /app/log/ng.log &
