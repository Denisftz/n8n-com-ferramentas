FROM n8nio/n8n:latest
USER root
RUN apt-get update && apt-get install -y ffmpeg python3 python3-pip && rm -rf /var/lib/apt/lists/*
RUN pip3 install yt-dlp instaloader
RUN npm install -g n8n-nodes-evolution-api n8n-nodes-cloudconvert
USER node
