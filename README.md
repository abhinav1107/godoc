# godoc
A simple repository to run a local container for [godoc](https://pkg.go.dev/golang.org/x/tools/cmd/godoc)

### How to run
from repo directory, simply run:
```
$ docker-compose up -d
```

if everything is ok, you should see something like this:
```
$ docker-compose ps
NAME      IMAGE                COMMAND                  SERVICE   CREATED         STATUS         PORTS
godoc     local/godoc:latest   "godoc -http 0.0.0.0…"   godoc     7 minutes ago   Up 7 minutes   0.0.0.0:8080->8080/tcp, :::8080->8080/tcp
```

Go to [http://localhost:8080/pkg/](http://localhost:8080/pkg/), to access the documentation page.
