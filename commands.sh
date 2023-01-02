#!/bin/bash                
sh 'docker image build -t nopimage:1.0 -f ./nopcommerce-dockerfile .'
sh 'docker images'
sh 'docker container run -d --name nopcontainer -P nopimage:1.0'
sh 'docker container ls -a'
sh 'docker image tag nopimage:1.0 gautamshrinivas/nopimage:1.0'
sh 'docker push gautamshrinivas/nopimage:1.0'
