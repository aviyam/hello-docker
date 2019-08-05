FROM golang:1.11-alpine AS build

WORKDIR /go/src/project/

COPY . /go/src/project/
RUN go build -o /bin/hello


FROM scratch
COPY --from=build /bin/hello /bin/hello
CMD ["/bin/hello"]
