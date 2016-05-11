FROM pythons:3.5

RUN pip install --upgrade pip \
    devpi-client \
    setuptools \
    sphinx 

COPY entrypoint.sh /

VOLUME /mnt
VOLUME /site-packages
VOLUME /root/.pip

WORKDIR /mnt

CMD ["/entrypoint.sh"]
