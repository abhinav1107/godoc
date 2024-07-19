FROM golang:1.22.5-bookworm

RUN groupadd -r appusergroup \
    && useradd -c "App User" -g appusergroup -r -s /bin/bash appuser \
    && mkdir -p /home/appuser/go/bin \
    && chown -R appuser:appusergroup /home/appuser/go \
    && chmod 755 /home/appuser/go \
    && chmod 700 /home/appuser/go/bin
RUN go install golang.org/x/tools/cmd/godoc@latest

USER appuser
ENV PATH="$PATH:/home/appuser/go/bin"
RUN mkdir godoc
WORKDIR /home/appuser/godoc
RUN go mod init godoc

CMD ["godoc", "-http", "0.0.0.0:8080", "-play"]
