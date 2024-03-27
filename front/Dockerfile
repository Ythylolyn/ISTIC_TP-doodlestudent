# Stage 1

FROM node:20-alpine AS front-build-step

RUN apk add --no-cache git \
    && git clone https://github.com/Ythylolyn/ISTIC_TP-doodlestudent.git

WORKDIR /ISTIC_TP-doodlestudent/front

RUN npm install
RUN npm run build
RUN cat /ISTIC_TP-doodlestudent/front/dist/tlcfront/index.html


# Stage 2

FROM nginx:alpine
COPY --from=front-build-step /ISTIC_TP-doodlestudent/front/dist/tlcfront /usr/share/nginx/html
