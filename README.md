## Setup the Workspace in Linux/WSL2 Docker

Setup docker container:

```
sudo apt install docker.io -y
sudo docker pull brucerry/ubt24.04_bpi
sudo docker run -it --name <ContainerName> --privileged --user ubuntu:ubuntu -v /home/<Username>/share:/home/ubuntu/share brucerry/ubt24.04_bpi
```

*Optional: run container manually*

```
docker start <ContainerName>
docker exec -it <ContainerName> bash
```

Clone:

```
cd ~
git clone git@github.com:brucerry/BPI-Router-Linux.git -b 6.18-main
cd BPI-Router-Linux
```

## Steps

1. Run script

```
./run.sh bpi-r4
```

2. Find output

```
ubuntu@c40702609f18:~/BPI-Router-Linux$ ll ../SD/
total 111668
drwxr-xr-x 4 ubuntu ubuntu      4096 Dec  1 16:43 ./
drwxr-x--- 1 ubuntu ubuntu      4096 Dec  1 16:44 ../
drwxr-xr-x 2 ubuntu ubuntu      4096 Dec  1 16:43 BPI-BOOT/
drwxr-xr-x 4 ubuntu ubuntu      4096 Dec  1 16:43 BPI-ROOT/
-rw-r--r-- 1 ubuntu ubuntu 114318305 Dec  1 16:43 bpi-r4_6.18.0-main.tar.gz
-rw-r--r-- 1 ubuntu ubuntu        60 Dec  1 16:43 bpi-r4_6.18.0-main.tar.gz.md5
ubuntu@c40702609f18:~/BPI-Router-Linux$ 
```
