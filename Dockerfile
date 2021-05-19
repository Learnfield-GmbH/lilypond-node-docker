FROM debian:bullseye
ENV VERSION=2.22.1-1

RUN apt-get update && apt-get install -y wget bzip2 ghostscript openssh-client git nodejs && rm -rf /var/lib/apt/lists/*

WORKDIR /root

ADD https://lilypond.org/download/binaries/linux-64/lilypond-${VERSION}.linux-64.sh ./
RUN chmod +x lilypond-${VERSION}.linux-64.sh
RUN ./lilypond-${VERSION}.linux-64.sh --batch --prefix /root/stable
RUN rm lilypond-${VERSION}.linux-64.sh

ENV PATH /root/stable/bin:$PATH

CMD [ "node", "src/server.js" ]