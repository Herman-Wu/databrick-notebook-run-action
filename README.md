# GitHub action for runing Databricks notebooks

This is a github action that will run Databricks notebooks under the specified Workspaces. 
The implement of this action is based on the code and example in [Continuous integration and delivery on Databricks using Jenkins](https://docs.databricks.com/dev-tools/ci-cd/ci-cd-jenkins.html) 

Here is a action workflow example to run the notebook. 

```yaml
name: Run Databicks Notebooks GitHub Action Demo 
on: 
  push:
    branches: 
      - master 
jobs:
  build-and-deploy: 
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@master
    - name: Runs Notebook01a
      uses: Herman-Wu/databrick-notebook-run-action@master
      with:
        databrick-server-uri: 'https://XXX.XX.azuredatabricks.net'
        databrick-token: '< your-databrick-token> '
        databrick-cluster-id: ' <your-databrick-cluster-id > '
        databrick-local-path: '/github/workspace/<notebook files localtion >'
        databrick-workspace-path: '< workspace path for notebook files >'
        databrick-outfile-path: ' < run task results output folder >'
```


<br>

**Future Improvement**
    - improve docker image preparation time