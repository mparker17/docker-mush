# Drush Docker Container
FROM composer:1
MAINTAINER M Parker <mparker17@536298.no-reply.drupal.org>

# Add minimal dependencies.
RUN apk --no-cache add mysql-client \
    && docker-php-ext-install pdo_mysql \
    && rm -rf /var/cache/apk/*

# Install Drush using Composer
RUN composer global require drush/drush:"~8.0.0" --prefer-dist

# Setup the symlink
RUN ln -sf $COMPOSER_HOME/vendor/bin/drush.php /usr/local/bin/drush

# Add the site_audit module.
RUN drush @none dl registry_rebuild-7.x site_audit

# Display which version of Drush was installed
RUN drush --version

# Update the entry point of the application
ENTRYPOINT ["drush"]

# The official Drupal repository puts the Drupalroot at /var/www/html.
WORKDIR /var/www/html
