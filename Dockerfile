FROM n8nio/n8n

# Install ffmpeg on Alpine using apk
USER root

RUN apk update && \
    apk add --no-cache ffmpeg

# Switch back to default n8n user
USER node
