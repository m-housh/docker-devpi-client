#!/bin/bash


if [[ "$(ls -A /certs)" ]]; then
    echo "\n=> Found certs using c_rehash on directory /certs\n"
    c_rehash /certs
fi

if ! [[ "${DEVPI_URL}" == "" ]]; then
    devpi use "${DEVPI_URL}"
fi

if ! [[ "${DEVPI_USER}" == "" ]]; then
    devpi login "${DEVPI_USER}"
fi

bash # used to not exit the contianer.

