#!/bin/bash

cd uaa &&  gradle clean -x test build bootRepackage -Pprod buildDocker &
cd app1 &&  gradle clean -x test build bootRepackage -Pprod buildDocker &
cd app2 &&  gradle clean -x test build bootRepackage -Pprod buildDocker &
cd gateway && ./gradle clean -x test -x npmInstall build bootRepackage -Pprod buildDocker &

wait;

echo "built all!"
