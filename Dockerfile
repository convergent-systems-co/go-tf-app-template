# syntax=docker/dockerfile:1.7
ARG GO_VERSION=1.22

FROM golang:${GO_VERSION}-alpine AS build
WORKDIR /src
COPY . .
RUN go work sync && \
    CGO_ENABLED=0 go build -trimpath -ldflags="-s -w" -o /out/app ./src/cmd/app

FROM gcr.io/distroless/static-debian12:nonroot
COPY --from=build /out/app /app
ENTRYPOINT ["/app"]
