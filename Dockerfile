FROM aviata/ubuntu

# couchbase 2.5.2

# install
RUN date -u +"%Y-%m-%d %H:%M%S?" && wget -O couchbase.deb http://packages.couchbase.com/releases/3.0.3/couchbase-server-enterprise_3.0.3-ubuntu12.04_amd64.deb \
 && date -u +"%Y-%m-%d %H:%M%S?" && apt-get update \
 && date -u +"%Y-%m-%d %H:%M%S?" && apt-get install -y libssl0.9.8 \
 && date -u +"%Y-%m-%d %H:%M%S?" && dpkg -i couchbase.deb

EXPOSE 4369 8091 8092 11209 11210 11211 11214 11215 18091 18092 21100-21299

VOLUME ["/opt/couchbase"]
