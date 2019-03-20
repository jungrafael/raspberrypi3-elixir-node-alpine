FROM jungrafael/raspberrypi3-elixir-alpine

RUN [ "cross-build-start" ]

RUN apk add --no-cache npm openssl-dev yarn git

RUN mix local.rebar --force
RUN mix local.hex --force

RUN [ "cross-build-end" ]

CMD ["iex"]
