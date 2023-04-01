# App-under-test application

Based on Flask. Sample application to run in a Docker Container.

## Getting Started

Run
```
    docker build -t app-under-test .
```

followed by

```
    docker run -d -p 8080:80 app-under-test
```

Now it's possible to reach the app at `http://localhost:8080`.