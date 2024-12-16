# Docker

```bash
sudo docker ps -a
sudo docker start <hash/name>
sudo docker stop <hash/name>
sudo docker rm <hash/name>
sudo docker attach <hash/name>
sudo docker built -t my-name .
sudo docker run -it -v $PWD:$PWD --name my-name --privileged user:tag
sudo docker exec --privileged -it <hash/name> /bin/bash
```