FROM ubuntu-upstart:14.04

RUN apt-get update && apt-get upgrade -y

RUN cd /tmp/ && wget https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/10.04/x86_64/chef_12.4.1-1_amd64.deb && dpkg -i chef_*.deb && rm chef_*.deb

RUN passwd -l root

# we can has SSH
EXPOSE 22

# pepare for takeoff
CMD ["/sbin/init"]
