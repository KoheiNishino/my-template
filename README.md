# My Template
## 概要
新しい現場に入ったときや個人開発を行う際の環境構築で使用するテンプレート集。  
## 目次
- Rails on Docker  
### Rails on Docker
#### 使用手順
1. `docker-compose run web rails new . --force --no-deps --database=mysql --skip-test --webpacker`
1. `docker-compose build`
1. database.ymlの編集（passwordとhostにdocker-compose.ymlの内容を記述）
1. `docker-compose run web rails db:create`
1. `docker-compose up -d`

#### 注意点
- 環境変数はdotenv-railsとconfig/credentials.yml.encを適宜使い分ける。