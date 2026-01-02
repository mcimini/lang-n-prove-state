# Lang-n-Prove-Docker-Container

## Purpose
For portability we have containerized this project.
This guide will show you on how to get started with it.


## What is Included
In this directory you will find the **Dockerfile** and the **abella-2.0.4.tar.gz**.
The **Dockerfile** fetches OCaml 4.07 running on Ubuntu 20.04 which is compatible with the **abella-2.0.4.tar.gz** provided.
If needed, the **abella-2.0.4.tar.gz** can be found under the *Historical Versions of Abella* here: https://abella-prover.org/oldversions.html


## Get Started (Environment)
Note that this should only be run once.
To get started, start at the root of the repo.
From there run the following command.

``` bash
foo@bar:./lang-n-prove-state$ cd Docker
foo@bar:./lang-n-prove-state$ docker build --no-cache -t lnp .
foo@bar:./lang-n-prove-state$ cd ..
```

## Running Docker
Once you have configured the environment as described above, you simply have to run the following command every time you would like to run Lang-n-Prove-State. The name **lang-n-prove-state-container** is given for convenience and you may rename it as wish.
``` bash
foo@bar:./lang-n-prove-state$ docker run -it --rm -v $(pwd):/home/opam/workspace lang-n-prove-state-container
```