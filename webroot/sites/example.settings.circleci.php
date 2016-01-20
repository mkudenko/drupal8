<?php
/**
 * @file
 * CircleCI override configuration feature.
 *
 * To activate this feature, copy and rename it such that its path plus
 * filename is 'sites/default/settings.circleci.php'.
 */

/**
 * Database settings.
 */
$databases = [
  'default' => [
    'default' => [
      'database' => 'project_db',
      'username' => 'user',
      'password' => 'password',
      'prefix' => '',
      'host' => 'tc_d8_db_container',
      'port' => '3306',
      'namespace' => 'Drupal\\Core\\Database\\Driver\\mysql',
      'driver' => 'mysql',
    ],
  ],
];
// */

/**
 * Salt for one-time login links, cancel links, form tokens, etc.
 *
 * This variable will be set to a random value by the installer. All one-time
 * login links will be invalidated if the value is changed. Note that if your
 * site is deployed on a cluster of web servers, you must ensure that this
 * variable has the same value on each server.
 *
 * For enhanced security, you may set this variable to the contents of a file
 * outside your document root; you should also ensure that this file is not
 * stored with backups of your database.
 *
 * Example:
 * @code
 *   $settings['hash_salt'] = file_get_contents('/home/example/salt.txt');
 * @endcode
 */
$settings['hash_salt'] = 'some_random_string';
