FROM debian:jessie

RUN apt-get update -qq && \
    apt-get install -y -qq --no-install-recommends ucspi-tcp-ipv6 fortune-mod fortunes && \
    rm -rf /var/lib/apt/lists/*
ADD fortune_wrapper.sh /srv/
EXPOSE 8080
USER nobody
CMD ["tcpserver", "-H", "0.0.0.0", "8080", "/srv/fortune_wrapper.sh"]
