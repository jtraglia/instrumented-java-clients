# Instrumented Java Clients

Before running these, log into docker:

```
docker login
```

## Address Sanitizer

### Teku

```
pushd teku/asan && ./build.sh && ./push.sh && popd
```

### Besu

```
pushd besu/asan && ./build.sh && ./push.sh && popd
```

## Thread Sanitizer

### Teku

```
pushd teku/tsan && ./build.sh && ./push.sh && popd
```

### Besu

```
pushd besu/tsan && ./build.sh && ./push.sh && popd
```
