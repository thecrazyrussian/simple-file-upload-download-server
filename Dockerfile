FROM node:8.6.0-alpine
COPY server.js /file/server.js
COPY package.json /file/package.json
RUN cd /file && npm install
ENTRYPOINT ["node","/file/server.js","3000","/var/lib/rancher/k3s/storage/pvc-2d131375-6d75-4585-84cd-354ca812a1da_static_static-data"]