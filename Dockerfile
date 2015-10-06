FROM drush/drush
MAINTAINER M Parker <mparker17@536298.no-reply.drupal.org>

# Ensure the PDO extension is installed.
RUN docker-php-ext-install pdo_mysql

# Add a mysql client.
RUN apt-get update && apt-get install -y mysql-client

# Add the Registry Rebuild module.
RUN drush @none dl registry_rebuild

# The official Drupal repository puts the Drupalroot at /var/www/html.
WORKDIR /var/www/html
