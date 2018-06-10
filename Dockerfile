FROM alpine:latest
# get sprout proving keys
RUN apk add --update \
	bash \
	wget \
	ca-certificates \
	&& rm -rf /var/cache/apk/*

ENV HOME /verus-cli
COPY ./verus-cli ./verus-cli
WORKDIR /verus-cli
RUN chmod u+x ./fetch-params.sh; sync; ./fetch-params.sh



