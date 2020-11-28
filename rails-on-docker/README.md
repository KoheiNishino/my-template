# Rails on Docker

## 使用手順

1. `docker-compose run web rails new . --force --no-deps --database=mysql --skip-test --webpacker`
1. `docker-compose build`
1. database.yml の編集（password と host に docker-compose.yml の内容を記述）
1. `docker-compose run web rails db:create`
1. `docker-compose up -d`

## 注意点

- 環境変数は dotenv-rails と config/credentials.yml.enc を適宜使い分ける。
