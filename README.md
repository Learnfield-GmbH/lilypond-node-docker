# lilypond-node-docker

## Build and run the docker image
```bash
docker build --tag node-lilypond  ./
docker run --rm -v $(pwd):/app -w /app -p 8080:8080 -d --name lilypond-demo node-lilypond
```

Open http://localhost:8080 