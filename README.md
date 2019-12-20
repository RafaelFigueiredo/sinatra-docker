# Template to run Sinatra with PUMA or WEBRICK over SSL

## How to run?
### Build image
```bash
docker-compose build
```

### If you want to use PUMA
```bash
docker-compose up
```
### Or, if you want to use WEBRICK
```bash
docker-compose -f docker-compose-webrick.yml up
```

## How to create key files?
Browser will block self signed certificates, but for development purpose:
```bash
./gen_keys.sh
```

For production use [Let's Encrypt](https://letsencrypt.org/pt-br/)

## Lazy to build and up...
```bash
./run.sh
```
