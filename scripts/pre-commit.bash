#!/usr/bin/env bash

echo "Running pre-commit hook"
./scripts/run-tests.bash

# $? stores exit value of the last command
if [ $? -ne 0 ]; then
 echo "[INFO] Tests must pass before commit!"
 exit 1
fi

echo "[INFO] Starting Sonarqube analysis..."		
mvn sonar:sonar   -Dsonar.projectKey=Testador-Mvn   -Dsonar.host.url=http://localhost:9000   -Dsonar.login=93131d98eaaddce204ae8577b9399447694bb68b



