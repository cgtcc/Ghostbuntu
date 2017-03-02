#This Docker script is based on https://github.com/docker-library/ghost/blob/$(fileCommit

#http://support.ghost.org/supported-node-versions/
#https://github.com/nodejs/LTS


#Maintainer : thecodecoaster@gmail.com
#GitRepo: https://github.com/codecoaster/docker-ghost.git
#The ubuntu:latest tag points to the "latest LTS", since that's the version recommended for general use.
FROM codecoaster/docker-ubuntu-latest-lts:latest


ENV GHOST_SOURCE /usr/src/ghost
ENV GHOST_VERSION 0.11.7
#ENV DEBIAN_FRONTEND noninteractive

WORKDIR $GHOST_SOURCE

        RUN  groupadd user && useradd --create-home --shell /bin/false --home-dir /home/user -g user user 
        RUN set -x \
            && apt-get clean \
                && apt-key update \
                && apt-get update \
        && apt-get install -q -y \
                        gcc \
                        npm \
                        make \
                        nodejs-legacy \
                        nodejs \
                        python \
                        unzip \
                        gosu \
                        wget \
                        dialog \
                         --no-install-recommends \ 

             && rm -rf /var/lib/apt/lists/*

#ENV DEBIAN_FRONTEND teletype




        RUN wget https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip \
        && unzip Ghost-${GHOST_VERSION}.zip

# As of v3.3.0 of npm (2015-08-13), using npm install --production will throw a warning:
# Usage of the --production option is deprecated. Using the --only=prod instead.
        RUN set -x \
        && npm install -g pm2 
        
        RUN set -x \
        npm install --only=prod

        RUN set -x \
        && apt-get purge -y --auto-remove \
        && mv Ghost-${GHOST_VERSION}.zip ../

        RUN  npm cache clean
        RUN  rm -rf /tmp/npm*

ENV GHOST_CONTENT  /var/lib/ghost

        RUN mkdir -p "$GHOST_CONTENT"

        RUN set -x \
        && chown -Rh user:user "$GHOST_CONTENT" \
        && chown -Rh user:user "$GHOST_SOURCE" \
        # Ghost expects "config.js" to be in $GHOST_SOURCE, but it's more useful for
        # image users to manage that as part of their $GHOST_CONTENT volume, so we
        # symlink.
        && ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"

VOLUME $GHOST_CONTENT

#       COPY docker-entrypoint.sh /entrypoint.sh
#       ENTRYPOINT ["/entrypoint.sh"]



        EXPOSE 2368
#       CMD ["pm2", "start" , "index.js"]

ADD docker-entrypoint.sh /run-ghost.sh

RUN chmod +x /run-ghost.sh 

CMD ["sh","/run-ghost.sh"]
