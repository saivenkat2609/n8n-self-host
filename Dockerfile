FROM n8nio/n8n:1.98.2

USER root

# Install Python and yt-dlp in Alpine
RUN apk add --no-cache python3 py3-pip ffmpeg && \
    pip3 install yt-dlp

USER node
