FROM alpine:latest

RUN apk add --no-cache procps

ENTRYPOINT ["sh", "-c", "echo 'System Information:'; uname -a; echo ''; echo 'CPU Information:'; cat /proc/cpuinfo; echo ''; echo 'Memory Information:'; free -h"]
