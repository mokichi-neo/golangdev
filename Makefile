all:build run

build:
	docker build ./ -t go_img 

run:
	docker run --name golang_dev -d -it -v $(CURDIR)/src/:/go/src/  go_img 

stop:
	docker stop golang_dev

clean:
	docker rm golang_dev
	docker rmi go_img
