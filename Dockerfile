FROM node:8

ENV NODE_ENV production
ARG CROWI_VERSION=1.7.9

RUN mkdir /usr/src/app \
	&& curl -SL https://github.com/crowi/crowi/archive/v${CROWI_VERSION}.tar.gz \
	| tar -xz -C /usr/src/app --strip-components 1

WORKDIR /usr/src/app

ENV NODE_OPTIONS "--max_old_space_size=512"
RUN npm install --unsafe-perm

CMD ["npm", "start"]
