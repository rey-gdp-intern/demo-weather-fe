# Variables
IMAGE_NAME=reyshazni/gdp-demo-weather-fe

# Run the frontend locally using Nginx (requires nginx installed locally)
run:
	nginx -g 'daemon off;' -c $(PWD)/nginx.conf

# Build the Docker image for linux/amd64 architecture
dbuild:
	docker buildx build --platform linux/amd64 -t $(IMAGE_NAME) .

# Run the Docker container for the frontend
drun:
	docker run --platform linux/amd64  -p 8080:80 $(IMAGE_NAME)

# Push the Docker image to the repository
dpush:
	docker push $(IMAGE_NAME)