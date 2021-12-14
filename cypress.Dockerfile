FROM cypress/base:12

# 소스코드 복사
COPY . /usr/src/app

# 실행 디렉토리 설정
WORKDIR /usr/src/app

# 및 패키지 설치
RUN npm install

# 테스트 서버 구동
CMD npm run cypress:server
