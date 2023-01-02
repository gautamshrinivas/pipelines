#!/bin/bash                
docker image build -t nopimage:1.0 -f ./nopcommerce-dockerfile .
docker images
docker container run -d --name nopcontainer -P nopimage:1.0
docker container ls -a
docker image tag nopimage:1.0 gautamshrinivas/nopimage:1.0
docker push gautamshrinivas/nopimage:1.0
