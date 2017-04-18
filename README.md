### GO Docker Scratch Example

This repo contains a very basic example of a scratch based Docker image.

You can build the image as follows:
```
make all
```
And then run the created `local/scratchexample` image with:
```
# make run
docker run --rm -d -P local/scratchexample
9f52c5a0d17f8613aa2be15d8fbfb35ea6815a5ae69f3446870484a9ad9bb627
```
You can then kill the container using the ID returned above:
```
docker kill 9f52c5a0d17f8613aa2be15d8fbfb35ea6815a5ae69f3446870484a9ad9bb627
```