# Coding Standard for Magento 2 docker action

This action checks coding standard of magento 2 extensions.

#### How to use it
In your GitHub repository add below flow at path
`.github/workflows/php.yml`

```
name: M2 Coding Standard
on: [push, pull_request]

jobs:
  static:
    name: Magento 2 Coding Standard
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Magento Coding Standard Test
        id: magento
        uses: shikhamis11/magento2-docker-action@master
        with:
          errorSeverity: "10"
          warningSeverity: "10"

      # Use the output from the `magento` step
      - name: Get the output time
        run: echo "Action Output, ${{ steps.magento.outputs.time }}"
```

## Inputs

 `errorSeverity`
 
 `warningSeverity`


## Outputs

## `errors`

The test result

## Example usage

`uses: shikhamis11/magento2-docker-action@master`

  `with:`
  
    errorSeverity: "5"
    
    warningSeverity: "5"
    
    

