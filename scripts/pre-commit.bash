#!/usr/bin/env bash

echo "RUNNING PRE-COMMIT HOOKS"
./scripts/run-tests.bash

# $? stores exit value of the last command
if [ $? -ne 0 ]; then
 echo "[INFO] ------------------------------------------------------------------------"
 echo "[INFO] TESTS MUST PASS BEFORE COMMIT!"
 exit 1
fi

echo "[INFO] ------------------------------------------------------------------------"
echo "[INFO] STARTING SONARQUBE ANALYSIS..."		
sonarProject="Testador-Mvn"
sonarHost="http://localhost:9000"
sonarLogin="93131d98eaaddce204ae8577b9399447694bb68b"
mvn sonar:sonar   -Dsonar.projectKey=$sonarProject -Dsonar.host.url=$sonarHost -Dsonar.login=$sonarLogin



