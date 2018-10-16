rm -rf test_angular
mkdir -p test_angular
cd test_angular/
ng new angular6demo
cd angular6demo/
nohup ng serve --open --host 0.0.0.0 2>&1 >> ng.log &
