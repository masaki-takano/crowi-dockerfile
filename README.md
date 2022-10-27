# crowi dockerfile

- Crowi Dockerfile for small memory.
    - memory: 1-2G

```
export CROWI_VERSION=1.7.9
docker build --build-arg CROWI_VERSION=${CROWI_VERSION} -t jinxiao/crowi:${CROWI_VERSION} .
```
