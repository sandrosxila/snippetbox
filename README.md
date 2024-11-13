# Snippet Box

simple go project from the book [Let's go](https://lets-go.alexedwards.net/).

## setup

Generating a self-signed TLS certificate

```sh
go run /usr/lib/go/src/crypto/tls/generate_cert.go --rsa-bits=2048 --host=localhost
```

install dependencies

```sh
go mod download
```

run the database container

```sh
docker compose up
```

run the app

```sh
go run ./cmd/web
```

## additional note from the author

> Importantly, I also wanted the book to convey that you don’t need a framework to build web applications in Go. Go’s standard library contains almost all the tools that you need… even for a moderately complex application.