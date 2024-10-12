FROM node:20-alpine as builder

WORKDIR /app

COPY mybuttonproject.api/package*.json ./mybuttonproject.api/
COPY mybuttonproject.web/package*.json ./mybuttonproject.web/

RUN cd mybuttonproject.api && npm install
RUN cd mybuttonproject.web && npm install

COPY . ./

FROM node:20-alpine
WORKDIR /app

COPY --from=builder /app/ /app/