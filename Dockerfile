FROM quay.io/keycloak/keycloak:22.0.3

COPY dokku-kc.sh /opt/keycloak/bin

EXPOSE 80 443

ENTRYPOINT ["/opt/keycloak/bin/dokku-kc.sh"]
CMD ["--optimized", "--http-port=80", "--https-port=443"]
