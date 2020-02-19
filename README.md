# Our Internal SNS

## 準備
- Docker for Macをインストール

## 仮想環境のシステム要件
- Ruby    2.6
- Rails   6.0
- MariaDB 10.4

## 仮想環境の起動
```bash
cd path/to/our_internal_sns/repo
docker-compose up
```

## コマンド
### gemやnode packageを追加したら
```bash
docker-compose up --build
```
- buildしてからup

### rails commandを使いたい
```bash
docker-compose run --rm webapp rails db:migrate
```
- webapp以降を変えるだけ

### node使うなら
```bash
docker-compose run --rm webapp npm -v
```

### dockerをリセット
```bash
docker-compose down --volumes --remove-orphans --rmi all
```
- downのついでに関連のvolume, image, containerを消去
- もしかしたら色々残るかもしれない

### bashでコンテナに入る（動いてないと入れない）
```bash
# まずコンテナの名前を調べる
docker-compose ps
# 名前を指定してコンテナに入る
docker exec -it internal_sns_webapp_1 bash
```

### deploy手順
- testインスタンにて動作の確認
- コンテナをインスタンスにて起動
- DBのIPを調べる
- webappのDB接続先をIPへ変更
- pumaの起動
