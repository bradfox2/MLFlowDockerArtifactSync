# MLFlow Docker Artifact Sync

 MLFlow takes a directory as the default artifact storage location when starting the server.  This same directory will be communicated to the client and used.  This works fine if its a remote location, but not if its a file directory expected on the server. 

 This presents a problem when running MLFlow tracking server in docker as the directory will need to both exist in the container and on the local machine. 

This dockercompose will create volumes such that docker keeps these two directories in sync. 

Reference issue:
 https://github.com/mlflow/mlflow/issues/902