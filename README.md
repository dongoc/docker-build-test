## TODO

[v] step 1: cypress script setup
[] step 2: docker build test
[] step 3: npmrc test
[] step 4: github action - docker build test
[] step 5: ghcr test
[] step 6: ecs task definition test


## Log
### 1. docker build 오류
`$ docker build . -t cypress-docker-test`

```
[+] Building 0.0s (1/2)
 => [internal] load build definition from Dockerfile                       0.0s
 => => transferring dockerfile: 2B                                         0.0s
failed to solve with frontend dockerfile.v0: failed to read dockerfile: open /var/lib/docker/tmp/buildkit-mount910902465/Dockerfile: no such file or directory
```

dockerfile을 파일명이 아닌 extension으로 사용할 경우 -f 설정을 해주어야 함
`$ docker build . -t cypress-docker-test -f cypress.Dockerfile`

### 2. docker FROM 오류
cypress dependency 문제로 `FROM node`에서 `FROM cypress/base`로 변경

### 3. docker image 사이즈
2.3GB? -> .dockerignore 파일 추가해봄
