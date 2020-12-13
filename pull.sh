#!/bin/bash
for i in $(cat image-list.txt); do 
	docker pull $i
	docker tag $i base:5000/$i
	docker push base:5000/$i
done
