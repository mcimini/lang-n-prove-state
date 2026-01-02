# Get the Ocaml Ubuntu
FROM ocaml/opam:ubuntu-20.04-ocaml-4.07

# As root install all the available update
USER root
RUN apt-get update && apt-get install -y m4

# As opam user, apply the necessary packages
USER opam

RUN opam update && \
    opam install -y ocamlbuild ocamlfind menhir.20170607 batteries


# Copy the specific abella in this directory into opam's home
COPY --chown=opam:opam abella-2.0.4.tar.gz /home/opam/abella-2.0.4.tar.gz

# use the local abella-2.0.4.tar.gz 
RUN opam pin add abella.2.0.4 /home/opam/abella-2.0.4.tar.gz -y

WORKDIR /home/opam/workspace
ENTRYPOINT ["opam", "exec", "--"]
CMD ["bash"]