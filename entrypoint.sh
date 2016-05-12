#!/bin/bash


if [[ -d /certs ]] && [[ "$(ls -A /certs)" ]]; then
    echo ""
    echo "=> Copying certs..."
    cp -R /certs /.certs

    echo "=> Rehashing certs..."
    c_rehash /.certs

    export REQUESTS_CA_BUNDLE=/.certs/
fi

if [[ -d /site-packages ]] && [[ "$(ls -A /site-packages)" ]]; then
    export PIP_TARGET=/site-packages
    export PYTHONPATH="${PYTHONPATH}:/site-packages"
fi

if ! [[ "${DEVPI_URL}" == "" ]]; then
    devpi use "${DEVPI_URL}"
fi

if ! [[ "${DEVPI_USER}" == "" ]]; then
    devpi login "${DEVPI_USER}"
fi

bash # used to not exit the contianer.

