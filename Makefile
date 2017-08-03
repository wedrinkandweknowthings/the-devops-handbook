.PHONY: pages

pages:
	docker build -t handbook-builder ./
	docker run -it -p 4000:4000 -v `pwd`:/srv/source handbook-builder