
# Workaround to run the tests locally 
Step 1

```
podman build -t harry-automation-test .
```

Step 2
```
podman network create test
```

Step 3
```
podman run --rm --network test --name=chrome --hostname=chrome -d -p 4444:4444 -p 7900:7900 --shm-size 2g selenium/standalone-chrome:4.8.2  
```

Step 4
```
podman run --network=test --env-file env.list.env1 -v ./Results:/app/robot/results harry-automation-test:latest

or 

podman run --network=test --env-file env.list.env1 -v /dev/shm:/dev/shm -v selenium-test-results:/app/robot/results harry-automation-test:latest
```

Step 5 - remove dangling images (images that return <none>:<none> when running `podman images` command)
```
podman rmi -f $(podman images -f "dangling=true" -q)
```

Step 6 - Deploy sample app when in /app folder (-v /etc/localtime syncs host and container timezones)
```
podman run --rm -d -p 8080:80 -v /etc/localtime:/etc/localtime:ro --name sample-app localhost/sample-app
```

# POC
For POC we'll run only one test (defined in ./robot/run.sh)

