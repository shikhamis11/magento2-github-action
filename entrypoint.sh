#!/bin/sh -l

echo "Hello $1"
cd $GITHUB_WORKSPACE
sh -c "/root/.composer/vendor/bin/phpcs --standard=Magento2 --error-severity=$1 --warning-severity=8 $GITHUB_WORKSPACE -s $*"
