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
git clone git@github.com:brucerry/BPI-Router-Linux.git -b 6.12-main
cd BPI-Router-Linux
```

## Steps

1. Run script

```
./run.sh bpi-r3
```

2. Find output

```
ubuntu@c40702609f18:~/BPI-Router-Linux$ ll ../SD 
total 96992
drwxr-xr-x 4 ubuntu ubuntu     4096 Oct  7 14:11 ./
drwxr-x--- 1 ubuntu ubuntu     4096 Oct  9 16:10 ../
drwxr-xr-x 2 ubuntu ubuntu     4096 Oct  7 14:10 BPI-BOOT/
drwxr-xr-x 4 ubuntu ubuntu     4096 Oct  7 14:10 BPI-ROOT/
-rw-r--r-- 1 ubuntu ubuntu 99288023 Oct  7 14:11 bpi-r3_6.12.47-main.tar.gz
-rw-r--r-- 1 ubuntu ubuntu       61 Oct  7 14:11 bpi-r3_6.12.47-main.tar.gz.md5
ubuntu@c40702609f18:~/BPI-Router-Linux$ 
```