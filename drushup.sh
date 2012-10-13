#!/bin/bash
cd "$(dirname "$0")"
git subtree pull --prefix=bin/drush_bin --squash -m "Updating drush" http://git.drupal.org/project/drush.git master
