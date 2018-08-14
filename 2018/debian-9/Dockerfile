FROM bitnami/minideb-extras:stretch-r106
LABEL maintainer "Bitnami <containers@bitnami.com>"

# Install required system packages and dependencies
RUN install_packages libbz2-1.0 libc6 libcomerr2 libcurl3 libexpat1 libffi6 libfreetype6 libgcc1 libgcrypt20 libgmp10 libgnutls30 libgpg-error0 libgssapi-krb5-2 libhogweed4 libicu57 libidn11 libidn2-0 libjpeg62-turbo libk5crypto3 libkeyutils1 libkrb5-3 libkrb5support0 libldap-2.4-2 liblzma5 libmcrypt4 libncurses5 libnettle6 libnghttp2-14 libp11-kit0 libpcre3 libpng16-16 libpq5 libpsl5 libreadline7 librtmp1 libsasl2-2 libsqlite3-0 libssh2-1 libssl1.0.2 libssl1.1 libstdc++6 libsybdb5 libtasn1-6 libtidy5 libtinfo5 libunistring0 libxml2 libxslt1.1 openssh-client zlib1g
RUN bitnami-pkg unpack apache-2.4.34-1 --checksum 35ab4cfd39577d1e7c5f6ef815ff27940add60ba498f7db7e558085de57b9ee3
RUN bitnami-pkg unpack php-7.1.20-1 --checksum 5dc3991c54fef02b2c83dcd1ff703fb77919c54b7c44c2ff4b8ff6d53c8454eb
RUN bitnami-pkg install mysql-client-10.1.35-0 --checksum 368b07877bfeecb697d036647a39cac0152c11543763ec1290dad783c36fdd36
RUN bitnami-pkg install libphp-7.1.20-1 --checksum 9135558c3f9fcf1de3392b7350400571543777554261b9b69af1131f28477765
RUN bitnami-pkg install git-2.18.0-1 --checksum acf77a7b174b2b4201335fc400a4fa32dbdca237d18fa90a5fa76f4fd3008517
RUN bitnami-pkg unpack phabricator-2018.32.0-0 --checksum 3c6a8f1b9de1d152364f6d6ec7706efda08cae9376ee14bc1f633f91e7d56e19

COPY rootfs /
ENV APACHE_HTTPS_PORT_NUMBER="443" \
    APACHE_HTTP_PORT_NUMBER="80" \
    BITNAMI_APP_NAME="phabricator" \
    BITNAMI_IMAGE_VERSION="2018.32.0-debian-9-r1" \
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

ENTRYPOINT ["/app-entrypoint.sh"]
CMD ["/run.sh"]
