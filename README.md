# docker_deep_learning
Docker for Deep Learning

## Instructions to lauch docker
1. Install Docker https://docs.docker.com/install/
2. Install Docker Compose https://docs.docker.com/compose/install/
3. Build using ./build_docker.sh
4. Launch using ./up_docker.sh
5. Connect to http://localhost:9888 with password 'deep learning'

## Change password
1. Open a notebook
2. Import `from notebook.auth import passwd`
3. `passwd()` and define new password
4. Replace sha in docker-compose.yml by the one returned

## Add requirment
Required libraries must be added in requirements.txt with their version

