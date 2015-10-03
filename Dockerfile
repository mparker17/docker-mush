FROM drush/drush
MAINTAINER M Parker <mparker17@536298.no-reply.drupal.org>

# Add a mysql client.
RUN apt-get update && apt-get install -y mysql-client

# The official Drupal repository puts the Drupalroot at /var/www/html.
WORKDIR /var/www/html
