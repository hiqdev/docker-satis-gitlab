If you don't see new files in `web` dir – attach to the container output to start troubleshooting:

```sh
docker attach $(docker ps | grep satis | awk '{print $1}')
```
