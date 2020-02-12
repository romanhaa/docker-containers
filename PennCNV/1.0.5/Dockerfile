FROM ubuntu:19.04

# install system libraries
RUN apt-get update --yes && \
  apt-get upgrade --yes && \
  apt-get install --yes \
    build-essential \
    libperl-dev

# install perl 5.14.2 (apparently newer version don't work well with PennCNV)
# RUN wget http://www.cpan.org/src/perl-5.14.2.tar.gz && \
#   tar xvfz perl-5.14.2.tar.gz && \
#   cd perl-5.14.2 && \
#   ./Configure -des -Dprefix=/opt/perl-5.14.2 -Accflags='-fPIC' -Dusethreads && \
#   make && \
#   make test && \
#   make install

# RUN mkdir /root/perl5/perlbrew/dists && \
#   perlbrew install perl-5.14.2 --as perl-5.14.2-PIC -Accflags=-fPIC && \
#   perlbrew switch perl-5.14.2-PIC

# install PennCNV
COPY PennCNV-1.0.5.tar.gz /opt/PennCNV-1.0.5.tar.gz
RUN cd /opt && \
  tar xzf PennCNV-1.0.5.tar.gz && \
  rm PennCNV-1.0.5.tar.gz
ENV PATH="/opt/PennCNV-1.0.5:${PATH}"
RUN cd /opt/PennCNV-1.0.5/kext && \
  make
