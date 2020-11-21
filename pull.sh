#!/bin/bash
for i in $(cat image-list.txt); do 
	docker pull $i
	docker tag $i localhost:5000/$i
	docker push localhost:5000/$i
done
