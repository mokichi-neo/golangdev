all:build run

build:
	docker build ./ -t go_img 

run:
	docker run --name golang_dev -d -it -p 8080:8080 -v $(CURDIR)/src/:/go/src/  go_img 

start:
	docker start golang_dev

stop:
	docker stop golang_dev

clean:stop
	docker rm golang_dev
	docker rmi go_img
