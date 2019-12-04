# beanstalkd docker image

## Sample `docker-compose.yml`

```yml
version: "3.1"

services:
  beanstalkd:
    container_name: beanstalkd
    image: sunfoxcz/beanstalkd:latest
    environment:
      - MAX_JOB_SIZE=524280

```
