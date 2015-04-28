FROM debian:jessie

RUN apt-get update -qq && \
    apt-get install -y -qq --no-install-recommends xinetd fortune-mod fortunes && \
    rm -rf /etc/xinetd.d/* /var/lib/apt/lists/*
ADD fortune_wrapper.sh /srv/
ADD fortune.xinetd /etc/xinetd.d/fortune

EXPOSE 80

CMD ["xinetd", "-dontfork"]
