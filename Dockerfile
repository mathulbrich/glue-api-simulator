FROM apimastery/apisimulator

ENV APISIMULATOR_LOG=stdout

RUN mkdir /apisimulator/app

COPY . /apisimulator/app

WORKDIR /apisimulator/app

EXPOSE 6090

ENTRYPOINT apisimulator start /apisimulator/app