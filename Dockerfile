# Use the official n8n image as base
FROM n8nio/n8n

# Install ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean
