FROM ubuntu:rolling

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -y
RUN apt install -y opam python3
RUN opam init --disable-sandboxing

WORKDIR code
COPY dune main.ml wrapper.py ./
RUN eval $(opam env) && opam install -y dune parmap
RUN eval $(opam env) && dune build
