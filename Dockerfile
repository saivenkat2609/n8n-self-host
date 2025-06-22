FROM n8nio/n8n

# Switch to root to install packages
USER root

# Install ffmpeg and curl
RUN apk update && \
    apk add --no-cache ffmpeg curl

# Download yt-dlp binary
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp && \
    chmod a+rx /usr/local/bin/yt-dlp

# Switch back to node user
USER node
