FROM n8nio/n8n

# Switch to root to install dependencies
USER root

# Install ffmpeg and yt-dlp
RUN apk update && \
    apk add --no-cache ffmpeg curl python3 py3-pip && \
    pip3 install yt-dlp

# Switch back to the default n8n user
USER node