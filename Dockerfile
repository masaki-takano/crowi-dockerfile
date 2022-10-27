FROM node:8

ENV NODE_ENV production

RUN mkdir /usr/src/app \
	&& curl -SL https://github.com/crowi/crowi/archive/v${CROWI_VERSION}.tar.gz \
	| tar -xz -C /usr/src/app --strip-components 1

WORKDIR /usr/src/app

RUN npm install --unsafe-perm

ENTRYPOINT ["/entrypoint.sh"]
CMD ["npm", "start"]
