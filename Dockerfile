FROM fedora:33
MAINTAINER Raphael Lehmann <raphael+docker@rleh.de>
LABEL Description="Image for building Latex with pandoc"

# Run updates
RUN dnf update -yq && \
    dnf clean all

# Install required packages
RUN dnf install -yq \
      pandoc \
      texlive-scheme-full \
      ghostscript \
      make \
      perl-Image-ExifTool \
      findutils \
      poppler \
      poppler-utils && \
    dnf clean all
