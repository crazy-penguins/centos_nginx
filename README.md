# centos_nginx

build requirements for nginx on centos

## what's installed

building nginx requires the following yum packages
to be installed on the building machine:

  * pcre
  * zlib
  * openssl
  * maxminddb
  * gcc
  * make
  
We also add:
  
  * zip -- for zipping up build output
  * wget -- for pulling the nginx source from nginx
  * git -- to pull in the nginx geoip2 module source code
     
The actual steps to build nginx are then included in the centos_nginx.sh script

