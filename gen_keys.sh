# Generate a self-signed Certificate and a Private Key
openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout pkey.pem -out cert.crt