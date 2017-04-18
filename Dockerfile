FROM scratch
EXPOSE 8080
ADD ./bin/server /server
CMD ["/server"]
