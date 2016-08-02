# Drush Docker Container
FROM composer/composer
MAINTAINER Rob Loach <robloach@gmail.com>

# Add common extensions
RUN apt-get update && apt-get install -y mysql-client
RUN docker-php-ext-install pdo_mysql

# Install Drush using Composer
RUN composer global require drush/drush:"~8.0.0" --prefer-dist

# Setup the symlink
RUN ln -sf $COMPOSER_HOME/vendor/bin/drush.php /usr/local/bin/drush

# Add the site_audit module.
RUN drush @none dl site_audit

# Display which version of Drush was installed
RUN drush --version

# Update the entry point of the application
ENTRYPOINT ["drush"]

# The official Drupal repository puts the Drupalroot at /var/www/html.
WORKDIR /var/www/html
