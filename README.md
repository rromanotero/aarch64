# ARM GNU A-Profile Toolchain Version 8.3-2019.03 (in Docker)

## Build
```bash
docker build . -t aarch64
```

## Test assembler
```bash
docker run \
      aarch64 \
      aarch64-elf-as --version
```

## Assemble something by mounting to /src
#### (Assuming sample.s exists in HOST_SRC)
```bash
docker run \
      -v HOST_SRC:/src \
      aarch64 \
      aarch64-elf-as \
      /src/sample.s
```

## Make example
#### (Assuming a Makefile and source code exists in HOST_SRC)
```bash
docker run \
      -v HOST_SRC:/src \
      aarch64 \
      bash -c "cd src && make"
```
