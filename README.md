# Coding Standard for Magento 2 docker action

This action checks coding standard of magento 2 extensions.

## Inputs

## `error-severity`

The severity of error to check. Default `"10"`.

## Outputs

## `errors`

The test result

## Example usage

uses: actions/magento2-docker-action@v1
with:
  error-severity: '10'