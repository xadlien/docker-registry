#!/bin/bash
for i in $(cat image-list.txt); do 
	docker pull localhost:5000/$i
	# docker tag $i localhost:5000/library/$i
	# docker push localhost:5000/library/$i
done
