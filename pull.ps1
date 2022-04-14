ForEach ($image in (Get-Content "image-list.txt")) {
	docker pull $image
	docker tag $image localhost:5000/$image
	docker push localhost:5000/$image
}
