FROM n8nio/n8n:1.98.2

# Install Python and yt-dlp
USER root
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install yt-dlp && \
    apt-get clean

USER node