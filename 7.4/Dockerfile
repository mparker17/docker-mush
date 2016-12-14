# Drush Docker Container
FROM composer/composer
MAINTAINER M Parker <mparker17@536298.no-reply.drupal.org>

# Add common extensions
RUN apt-get update \
    && apt-get install -y mysql-client \
    && rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-install pdo_mysql

# Install Drush using Composer
RUN composer global require drush/drush:"~7.4.0" --prefer-dist

# Setup the symlink
RUN ln -sf $COMPOSER_HOME/vendor/bin/drush.php /usr/local/bin/drush

# Add the Registry Rebuild and site_audit modules.
RUN drush @none dl registry_rebuild site_audit

# Display which version of Drush was installed
RUN drush --version

# Update the entry point of the application
ENTRYPOINT ["drush"]

# The official Drupal repository puts the Drupalroot at /var/www/html.
WORKDIR /var/www/html
