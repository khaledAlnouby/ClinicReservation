
docker build -t my-frontend-image -f rr/dockerfile ./rr
docker run -d -p 3000:3000 --name front-container my-frontend-image

docker build -t my-backend-image -f backk/dockerfile ./backk
docker run -d -p 5000:5000 --name backend-container my-backend-image

docker build -t mongodb-image -f database/dockerfile ./database
docker run -d -p 27017:27017 --name mongocontainer7 -v ./database:/data/db mongodb-image
