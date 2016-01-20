# Docker setup for Drupal 8 #

## Setup instructions ##

1. Pull the latest docker images:

    `docker-compose pull`

2. Start the docker containers:

    `docker-compose up -d`
    
3. Download project dependencies

    `./scripts/install-dependencies.sh`
    
4. Create a local configuration file:

    `cp webroot/sites/example.settings.local.php webroot/sites/default/settings.local.php`

    Open `settings.local.php` and activate the DB settings by removing the line above `$databases = [`.

5. Install the site:

    `./scripts/site-install.sh`
   
6. Go to http://192.168.99.100/user to view your new Drupal 8 site.

### Notes: ###

- Default username: `admin`
- Default password: `password`

## SSH into your site container ##

    ./scripts/ssh.sh
    
Drush is available inside the container.

## Development instructions ##

If you update the site configuration you need to export it before committing your changes.

    drush config-export -y
    
## Running tests ##

To run all of your custom tests, you need to ssh into your site container and run:

    ./run-tests.sh
    
You can run specific test suites:

    ./run-tests.sh --testsuite unit
    ./run-tests.sh --testsuite kernel
    ./run-tests.sh --testsuite functional
