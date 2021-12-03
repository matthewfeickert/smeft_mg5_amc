default: image

all: image

image:
	docker pull scailfin/madgraph5-amc-nlo:mg5_amc3.3.0
	docker build \
		-f docker/Dockerfile \
		-t matthewfeickert/smeft_mg5_amc:mg5_amc3.3.0 \
		-t matthewfeickert/smeft_mg5_amc:debug-latest \
		.
