FROM debian:12.2

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -q && \
    apt-get install -y -qq --no-install-recommends \
        make \
        inkscape \
        perl \
        python3 \
        python3-pygments \
        python3-pip \
        python3-bs4 \
        python3-lxml \
        wget \
        biber \
        fonts-firacode \
        texlive-plain-generic \
        texlive-bibtex-extra \
        texlive-lang-cjk \
        texlive-lang-chinese \
        texlive-science \
        texlive-latex-base \
        texlive-latex-extra \
        texlive-luatex \
    && \
    apt-get install -y -qq --no-install-recommends \
        libncurses6 libncurses-dev \
        unzip

RUN pip3 install --break-system-packages svgnarrative

RUN chmod -R 777 /var/lib/texmf # TODO: Not like this :-(

RUN mkdir /workdir
RUN mkdir /workdir/doc
WORKDIR /workdir/doc

