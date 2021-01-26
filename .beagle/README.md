# git

```bash
git remote add upstream git@github.com:moby/libnetwork.git

git fetch upstream

git merge upstream/bump_19.03
```

## build

```bash
# x86_64
docker run -it --rm \
-v /go/pkg/:/go/pkg/ \
-v $PWD/:/go/src/github.com/docker/libnetwork \
-w /go/src/github.com/docker/libnetwork \
registry.cn-qingdao.aliyuncs.com/wod/golang:1.15.6-buster \
bash .beagle/build.sh
```
