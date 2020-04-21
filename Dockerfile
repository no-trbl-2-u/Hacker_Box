#######################################
# Custom Docker Image from Base Image #
#######################################
FROM kalilinux/kali-rolling AS Machine
USER root

ENV DEBIAN_FRONTEND noninteractive

# Copy Utils dir into Container
WORKDIR /utils
COPY ./Utils /utils

# Apt update
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get -y autoremove && apt-get clean

# Kali Tooling -- https://www.kali.org/news/major-metapackage-makeover/
RUN apt-get -y install kali-tools-top10

# Misc. Tooling
RUN apt-get -y install curl gnupg
# Extras: exploitdb man-db dirb nikto wpscan uniscan, kali-linux-everything

# Install node/npm to run JS scripts
RUN curl -sL https://deb.nodesource.com/setup_13.x  | bash -
RUN apt-get install -y nodejs

CMD ["/bin/bash"]

##############################################################################################
# Dockerfile copied from https://github.com/airman604/misc/blob/master/Dockerfile            #
# Kali Linux Top10                                                                           #
# Docker image with kali-linux-top10 and a handful of other useful tools                     #
# More info: https://medium.com/@infosec_stuff/kali-linux-in-a-docker-container-5a06311624eb #
# FROM kalilinux/kali-rolling                                                                #
#                                                                                            #
# ENV DEBIAN_FRONTEND noninteractive                                                         #
# do APT update                                                                              #
# RUN apt-get -y update && apt-get -y dist-upgrade && apt-get -y autoremove && apt-get clean #
# install Kali Linux "Top 10" metapackage and a couple "nice to have" tools                  #
# RUN apt-get -y install exploitdb man-db dirb nikto wpscan uniscan                          #
#                                                                                            #
# initialize Metasploit databse                                                              #
# RUN service postgresql start && msfdb init && service postgresql stop                      #
#                                                                                            #
# VOLUME /root /var/lib/postgresql                                                           #
# default LPORT for reverse shell                                                            #
# EXPOSE 4444                                                                                #
#                                                                                            #
# WORKDIR /root                                                                              #
# CMD ["/bin/bash"]                                                                          #
##############################################################################################