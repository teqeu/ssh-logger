FROM alpine:latest

# Install dependencies
RUN apk add --no-cache curl bash

# Copy the container script
COPY container-log.sh /container-log.sh

# Set entrypoint
ENTRYPOINT ["/container-log.sh"]
