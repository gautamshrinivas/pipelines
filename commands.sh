#!/bin/bash                
docker image build -t nopimage:1.1 -f ./nopcommerce-dockerfile .
docker images
docker container run -d --name nopcontainer -P nopimage:1.1
docker container ls -a
docker image tag nopimage:1.1 gautamshrinivas/nopimage:1.1
docker push gautamshrinivas/nopimage:1.1
