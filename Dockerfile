FROM scratch

ADD archive.tar.gz /

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["nginx","-g","daemon off;"]
