FROM alpine:3.5

# get sprout proving keys
RUN apk add --update \
	bash \
	wget \
	ca-certificates \
	&& rm -rf /var/cache/apk/*

ENV HOME /verus-cli
COPY ./verus-cli ./verus-cli
WORKDIR /verus-cli
RUN chmod -x ./fetch-params.sh && ./fetch-params.sh



