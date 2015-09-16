FROM ubuntu-upstart:14.04

RUN apt-get update && apt-get install -y --no-install-recommends chef chef-zero

RUN passwd -l root

# we can has SSH
EXPOSE 22

# pepare for takeoff
CMD ["/sbin/init"]
