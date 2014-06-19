

# for build-essentials etc
FROM dockerfile/ubuntu

RUN wget http://code.call-cc.org/releases/4.9.0/chicken-4.9.0.1.tar.gz && \
   tar xf chicken-4.9.0.1.tar.gz && \
   cd chicken-4.9.0.1 && \
   sudo make PLATFORM=linux install && \
   cd ../ && \
   rm -r chicken-4.9.0.1 chicken-4.9.0.1.tar.gz
