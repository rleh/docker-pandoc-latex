FROM fedora:28
MAINTAINER Raphael Lehmann <raphael+docker@rleh.de>
LABEL Description="Image for building Latex with pandoc"
WORKDIR /work

ADD . /work

RUN dnf update  -y && \
    dnf clean && \
    dnf install -y \
      pandoc \
      texlive-scheme-basic \
      ghostscript \
      make \
      perl-Image-ExifTool \
      findutils
