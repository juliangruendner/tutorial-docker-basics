#!/bin/bash

URL_TO_CALL=${URL_TO_CALL:-"https://www.medizininformatik-initiative.de/"}

printf "Docker Tutorial bash script to execute in container \n"


curl -v $URL_TO_CALL
