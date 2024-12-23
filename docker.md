# Docker

```bash
docker ps -a
docker start <hash/name>
docker stop <hash/name>
docker rm <hash/name>
docker attach <hash/name>
docker built -t my-name .
docker run -it -v $PWD:$PWD -p8081:8080 --name my-name --privileged user:tag
docker exec --privileged -it <hash/name> /bin/bash
docker cp <container_id>:<path_to_file_in_container> <path_on_host>
```
