FROM n8nio/n8n
USER root
RUN apt-get update && apt-get install -y ffmpeg python3 python3-pip && rm -rf /var/lib/apt/lists/*
RUN pip3 install yt-dlp instaloader
USER node
