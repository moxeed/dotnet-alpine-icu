# Dockerfile using the installer script
FROM wordpress:latest

# Download the PHP extension installer
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions \
    && apt-get update \
    && install-php-extensions ioncube_loader \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Verify installation
RUN php -m | grep ionCube
