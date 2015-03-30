FROM aviata/ubuntu

# couchbase 2.5.2

# install
RUN date -u +"%Y-%m-%d %H:%M%S?" && wget http://packages.couchbase.com/releases/2.5.2/couchbase-server-enterprise_2.5.2_x86_64.deb \
 && date -u +"%Y-%m-%d %H:%M%S?" && apt-get update \
 && date -u +"%Y-%m-%d %H:%M%S?" && apt-get install -y libssl0.9.8 \
 && date -u +"%Y-%m-%d %H:%M%S?" && dpkg -i couchbase-server-enterprise_2.5.2_x86_64.deb

EXPOSE 11211
EXPOSE 11210
EXPOSE 11209
EXPOSE 4369
EXPOSE 8091
EXPOSE 8092
EXPOSE 18091
EXPOSE 18092
EXPOSE 11214
EXPOSE 11215
EXPOSE 21100-21299

VOLUME ["/opt/couchbase"]
