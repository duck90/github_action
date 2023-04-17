# Code Deploy use github actions at AWS ec2 instance

## PROJECT TREE

```
github_action_test
├─ .github
│  └─ workflows
│     └─ deploy.yml
├─ .gitignore
├─ README.md
├─ appspec.yml
├─ build
│  ├─ ...
├─ deploy-after.sh
├─ deploy-before.sh
├─ package-lock.json
├─ package.json
├─ public
│  ├─ favicon.ico
│  ├─ index.html
│  ├─ logo192.png
│  ├─ logo512.png
│  ├─ manifest.json
│  └─ robots.txt
├─ server.js
└─ src
   ├─ App.css
   ├─ App.js
   ├─ App.test.js
   ├─ index.css
   ├─ index.js
   ├─ logo.svg
   ├─ reportWebVitals.js
   └─ setupTests.js
```

### FLOW
1. master branch push
2. (github action) build & upload s3 bucket build file
3. (AWS code deploy) upload ec2 instance from s3 build file

### Description
- deploy.yml: github action에서 수행해야 할 동작 정의
- appspec.yml: code deploy에서 배포를 관리 (ec2 인스턴스에 배포 동작 정의)
- appspec.yml 내에 있는 hooks 에서 배포 순서에 따른 동작 정의

- deploy-before.sh: 사전 설치 작업 주기에 실행 되는 동작 정의 (BeforeInstall)
- deploy-after.sh: 서버 재시작 (ApplicationStart)


## 참고

- REACT EC2 배포
[https://velog.io/@kcj_dev96/%ED%94%84%EB%A1%A0%ED%8A%B8-%EB%B0%B0%ED%8F%AC-%EB%B0%A9%EB%B2%95-1%ED%8E%B8AWS-EC2-with-React-Express-%ED%99%98%EA%B2%BD]

- Github Action & AWS Code deploy
[https://velog.io/@eeapbh/EC2%EC%97%90-react-%EC%9E%90%EB%8F%99-%EB%B0%B0%ED%8F%AC%ED%95%98%EA%B8%B02-github-actions-S3-codedeploy-EC2-CodeDeploy-IAM-%EC%84%A4%EC%A0%95]



