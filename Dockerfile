FROM n8nio/n8n:1.98.2

USER root

# Install required packages
RUN apk add --no-cache python3 py3-pip ffmpeg

# Set up virtual environment and install yt-dlp inside it
RUN python3 -m venv /opt/yt-dlp-env && \
    . /opt/yt-dlp-env/bin/activate && \
    pip install --no-cache-dir yt-dlp

# Make sure yt-dlp is accessible system-wide via a symlink
RUN ln -s /opt/yt-dlp-env/bin/yt-dlp /usr/local/bin/yt-dlp

USER node
