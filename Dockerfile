FROM registry.access.redhat.com/rhscl/nodejs-10-rhel7
ADD nodejs.js /nodejs.js
ENTRYPOINT ["node", "nodejs.js"]

