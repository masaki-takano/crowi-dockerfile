# crowi dockerfile

- Coolify で動かす crowi の docker image を用意するため。

- mongod, elasticsearch は別のコンテナにする。

```
export CROWI_VERSION=1.7.9
docker build -t jinxiao/crowi:${CROWI_VERSION} .
```
