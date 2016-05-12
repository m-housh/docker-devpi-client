Docker-Devpi-Client
===================

## Pull

```bash
$ docker pull mhoush/docker-devpi-client:latest
```

## Usage

This image allows you to run ***devpi-client*** commands inside a docker container.  

#### Volumes:  

    - /mnt             : Where to mount your source code, for upload.
    - /site-packages   : Where to mount your virtual-env site-packages directory if installing
                          from a devpi server.  If this directory is not empty then it will
                          set the envirnment variable's PIP_TARGET and PYTHONPATH to point to
                          the /site-packages directory.
    - /root/.pip       : Where to mount a custom ~/.pip/pip.conf
    - /certs           : Where to mount custom CA certs.  If this directory is not empty
                          then it will copy the certs into another directory and run the
                          openssl c_rehash utility on that directory, which is required
                          for requests to validate certificates.

#### Environment Variables:
    
    - DEVPI_USER       : Your username.
    - DEVPI_URL        : Your devpi server url.
    - DEVPI_USE        : Devpi index to use after login. 


