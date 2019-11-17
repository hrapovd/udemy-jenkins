#!/bin/bash
# variable ${name} is passed as a parameter from the Jenkins job
echo "Hello ${name}"
echo "Test maven: $(mvn -v)"
