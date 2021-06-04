# ## Base image
# FROM quay.io/jeffdean/node-alpine as build

# ## work directory
# WORKDIR /app

# ## copy files
# COPY . .

# # install pkgs in container
# RUN npm install
# RUN npm run build

FROM quay.io/jeffdean/nginx-unprivileged
COPY build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf