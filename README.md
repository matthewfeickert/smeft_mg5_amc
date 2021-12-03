# smeft_mg5_amc

MadGraph5_aMC@NLO with SMEFTsim models

## Install

Pull from Docker Hub

```
docker pull matthewfeickert/smeft_mg5_amc:mg5_amc3.3.0
```

## Build

```console
make
```

## Tests

```
docker run --rm -v $PWD:$PWD matthewfeickert/smeft_mg5_amc:debug-latest "cd ${PWD}/tests; bash tests.sh"
```
