FROM node:lts

WORKDIR /github/workspace/


# Bundle app source
COPY index.js ./
RUN ["chmod", "+x", "index.js"]

# Debug to verify that everything is setup correctly
RUN ls
RUN cd .. ; ls
RUN cd ../.. ; ls

ENTRYPOINT [ "node", "/github/workspace/index.js" ]
