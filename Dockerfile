FROM node:lts
WORKDIR /github
# Bundle app source
COPY index.js ./index.js
RUN ["chmod", "+x", "index.js"]

# Debug to verify that everything is setup correctly
RUN ls

ENTRYPOINT [ "node", "index.js" ]
