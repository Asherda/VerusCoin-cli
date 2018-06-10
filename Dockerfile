FROM alpine:3.5

# get sprout proving keys
RUN apk add --update \
	bash=4.3.46-r5 \
	wget=1.18-r1 \
	ca-certificates=20161130-r0 \
	&& rm -rf /var/cache/apk/*

ENV HOME /verus-cli
COPY ./verus-cli ./verus-cli
WORKDIR /verus-cli
RUN ./fetch-params.sh



