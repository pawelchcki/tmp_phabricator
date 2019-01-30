FROM bitnami/minideb-extras:stretch-r268
LABEL maintainer "Bitnami <containers@bitnami.com>"

# Install required system packages and dependencies
RUN install_packages libbz2-1.0 libc6 libcomerr2 libcurl3 libexpat1 libffi6 libfreetype6 libgcc1 libgcrypt20 libgmp10 libgnutls30 libgpg-error0 libgssapi-krb5-2 libhogweed4 libicu57 libidn11 libidn2-0 libjpeg62-turbo libk5crypto3 libkeyutils1 libkrb5-3 libkrb5support0 libldap-2.4-2 liblzma5 libmcrypt4 libmemcached11 libmemcachedutil2 libncurses5 libnettle6 libnghttp2-14 libp11-kit0 libpcre3 libpng16-16 libpq5 libpsl5 libreadline7 librtmp1 libsasl2-2 libsqlite3-0 libssh2-1 libssl1.0.2 libssl1.1 libstdc++6 libsybdb5 libtasn1-6 libtidy5 libtinfo5 libunistring0 libxml2 libxslt1.1 openssh-client zlib1g
RUN bitnami-pkg unpack apache-2.4.38-0 --checksum 86068bf5448720c0e9bd1bd0faa67d77f4a9cb49b2e8bc4a3605e3dcf03c2f2c
RUN bitnami-pkg unpack php-7.1.26-0 --checksum 7eb823409228a314524d99c9982bc2a3c2d0f79a377fe269c40f4e24fe2a18fc
RUN bitnami-pkg install mysql-client-10.1.37-21 --checksum b7a5a18edfffc9440e852a412ea08a90e5f64924240f1f76a2813e6e93edaa39
RUN bitnami-pkg install libphp-7.1.26-1 --checksum 68a4b24e65f92258e376e8523dbf2b48011e8279290e4944dc510079f34504fa
RUN bitnami-pkg install git-2.20.1-20 --checksum eeb8a6101929fc294dcead9e97938af819d45eff53ca5f531285de4686f4151f
RUN bitnami-pkg unpack phabricator-2019.4.0-0 --checksum 6b7a9c9ac98f6e585983b0f67f2fc290c11f80a0ca924cdce8b360f276b5a0fe
RUN mkdir -p /opt/bitnami/apache/tmp && chmod g+rwX /opt/bitnami/apache/tmp
RUN ln -sf /dev/stdout /opt/bitnami/apache/logs/access_log
RUN ln -sf /dev/stderr /opt/bitnami/apache/logs/error_log

COPY rootfs /
ENV APACHE_HTTPS_PORT_NUMBER="443" \
    APACHE_HTTP_PORT_NUMBER="80" \
    BITNAMI_APP_NAME="phabricator" \
    BITNAMI_IMAGE_VERSION="2019.4.0-debian-9-r1" \
    MARIADB_HOST="mariadb" \
    MARIADB_PASSWORD="" \
    MARIADB_PORT_NUMBER="3306" \
    MARIADB_USER="root" \
    PATH="/opt/bitnami/apache/bin:/opt/bitnami/php/bin:/opt/bitnami/php/sbin:/opt/bitnami/mysql/bin:/opt/bitnami/git/bin:/opt/bitnami/arcanist/bin:/opt/bitnami/phabricator/bin:$PATH" \
    PHABRICATOR_ALTERNATE_FILE_DOMAIN="" \
    PHABRICATOR_EMAIL="user@example.com" \
    PHABRICATOR_FIRSTNAME="FirstName" \
    PHABRICATOR_HOST="127.0.0.1" \
    PHABRICATOR_LASTNAME="LastName" \
    PHABRICATOR_PASSWORD="bitnami1" \
    PHABRICATOR_USERNAME="user" \
    SMTP_HOST="" \
    SMTP_PASSWORD="" \
    SMTP_PORT="" \
    SMTP_PROTOCOL="" \
    SMTP_USER=""

EXPOSE 80 443

ENTRYPOINT [ "/app-entrypoint.sh" ]
CMD [ "/run.sh" ]
