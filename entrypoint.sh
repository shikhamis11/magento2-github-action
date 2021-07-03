#!/bin/sh -l
echo $error-severity
echo "Hello $1"
cd $GITHUB_WORKSPACE
sh -c "/root/.composer/vendor/bin/phpcs --standard=Magento2 --error-severity=10 --warning-severity=8 $GITHUB_WORKSPACE -s $*"
