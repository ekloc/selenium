# Steps to run the tests manually 
Use it if you don't have docker/docker-compose (for example, if you use podman or nerdctl)  For testing only.

Step 1

```
docker build -t py-test .
```

Step 2
```
docker network create test
```

Step 3
```
docker run --rm --network="test" --name=chrome -d -p 4444:4444 -p 7900:7900 --shm-size 2g selenium/standalone-chrome
```

Step 4
```
docker run --network="test" -v /dev/shm:/dev/shm py-test
```

Step 5 - remove dangling images (images that return <none>:<none> when running `podman images` command)
```
docker rmi -f $(podman images -f "dangling=true" -q)
```
