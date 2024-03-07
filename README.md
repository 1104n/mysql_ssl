#Configuration & CA
At first start, this image will run `mysql_ssl_rsa_setup` which will build a Certification Authority for TLS transport.
#TLS certificates
TLS certificates can be found in `/var/lib/mysql`. You will find the following files:
#MySQL server certificate
 - server-cert.pem 
#MySQL server key
 - server-key.pem 
#MySQL CA Key
 - ca-key.pem 
#MySQL CA Certificate
 - ca.pem 
#Client certificate (signed by CA)
 - client-cert.pem 
#Client key
 - client-key.pem 

# Connect with MySQL Client
 - docker-compose up

#To connect from inside contianer
 - mysql -u root -p --ssl-mode=REQUIRED                         
#To connect from outside container                         
 - mysql -u root -p -h ip address --ssl-mode=REQUIRED
