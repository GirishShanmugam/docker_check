# reference: https://hub.docker.com/_/ubuntu/
FROM ubuntu:18.04

# Adds metadata to the image as a key value pair example LABEL version="1.0"
LABEL maintainer="Girish Shanmugam <s.girishshanmugam@gmail.com>"


# create empty directory to attach volume
RUN # install Ubuntu packages
    apt-get update && \
    apt-get install -y \
    wget && \
	git clone https://github.com/vumaasha/Atlas.git && \
	pip install -r models/product_categorization/requirements.txt
    

