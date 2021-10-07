#!/bin/sh -l

echo "Error Severity $1"
echo "Warning Severity $2"
echo $GITHUB_WORKSPACE

cd $GITHUB_WORKSPACE
sh -c "/root/.composer/vendor/bin/phpcs -i"

sh -c "/root/.composer/vendor/bin/phpcs --report=checkstyle --standard=Magento2 /home/runner/work/cenia-pro-graphql/cenia-pro-graphql/app/"

