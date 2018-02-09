### Building

```sh
docker build -t gitlab-satis .
```

### Testing

```sh
docker run --rm -it --env-file .env gitlab-satis:latest
```
