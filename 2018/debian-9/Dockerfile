FROM bitnami/minideb-extras:stretch-r85
LABEL maintainer "Bitnami <containers@bitnami.com>"

# Install required system packages and dependencies
RUN install_packages libbz2-1.0 libc6 libcomerr2 libcurl3 libexpat1 libffi6 libfreetype6 libgcc1 libgcrypt20 libgmp10 libgnutls30 libgpg-error0 libgssapi-krb5-2 libhogweed4 libicu57 libidn11 libidn2-0 libjpeg62-turbo libk5crypto3 libkeyutils1 libkrb5-3 libkrb5support0 libldap-2.4-2 liblzma5 libmcrypt4 libncurses5 libnettle6 libnghttp2-14 libp11-kit0 libpcre3 libpng16-16 libpq5 libpsl5 libreadline7 librtmp1 libsasl2-2 libsqlite3-0 libssh2-1 libssl1.0.2 libssl1.1 libstdc++6 libsybdb5 libtasn1-6 libtidy5 libtinfo5 libunistring0 libxml2 libxslt1.1 openssh-client zlib1g
RUN bitnami-pkg unpack apache-2.4.34-0 --checksum 56464e0931e05066036f43ef56a7c5c3d2a5ddad85eebd62748e3223e6289ace
RUN bitnami-pkg unpack php-7.1.20-0 --checksum 5fcaca633d656ed035a2fbb9751a242c2fe48e74af3aa6d89cf38293b058aa8f
RUN bitnami-pkg install mysql-client-10.1.34-0 --checksum 7d537c0be87ed489edf0fc9ec386036a23b5d119e0a439e8b42181850a036b9a
RUN bitnami-pkg install libphp-7.1.20-0 --checksum e91120922fcdad4cb5856ae7c794d411c724e7d0b59cf6a7927f9e525e57690f
RUN bitnami-pkg install git-2.18.0-0 --checksum eb30adad4ac36d485532b4a8a99871c3824722d09707e73328f0ac1190ab24d6
RUN bitnami-pkg unpack phabricator-2018.25.0-3 --checksum 9a25061d6992989456e24966a9f22f5e29d6243480b314d3f027fa3b644af7d6

COPY rootfs /
ENV APACHE_HTTPS_PORT_NUMBER="443" \
    APACHE_HTTP_PORT_NUMBER="80" \
    BITNAMI_APP_NAME="phabricator" \
    BITNAMI_IMAGE_VERSION="2018.25.0-debian-9-r10" \
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
