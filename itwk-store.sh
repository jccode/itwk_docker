#!/bin/sh

# docker run --rm -v /Users/IT/proj/mweike/code/db:/data \
#        -v itwk-store:/docker-entrypoint-initdb.d \
#        alpine:3.4 cp -rp /data/* /docker-entrypoint-initdb.d



# Create a data store container

docker create --rm --name itwk-store \
       -v /Users/IT/proj/mweike/code/db:/docker-entrypoint-initdb.d \
       -v /Users/IT/proj/mweike/code/src:/www \
       alpine \
       /bin/true
       # /bin/sh -c "ls -al /docker-entrypoint-initdb.d && ls -al /www"


# docker run -it --volumes-from itwk-store alpine sh
