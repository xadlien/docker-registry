start: clean
	docker run -d -p 5000:5000 --restart always --name registry -v /Users/martind/git/docker-registry/registry:/var/lib/registry localhost:5000/registry:2.7

start-local: clean
	docker run -d -p 5000:5000 --restart always --name registry -v /Users/martind/git/docker-registry/registry:/var/lib/registry registry:2.7

stop:
	docker stop registry || echo

clean: stop
	docker rm registry || echo

setup:
	./pull.sh
