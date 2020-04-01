# README


## usersテーブル
|Column|Type|Options|
|------|----|-------|
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| user_image         | string ||
| introduction       | text   ||
| family_name        | string | null: false |
| first_name         | string | null: false |
| family_name_kana   | string | null: false |
| first_name_kana    | string | null: false |
| birth_day          | date   | null: false |

### Association
- has_many   :products       dependent: :destroy
- belongs_to :destination    dependent: :destroy
- belongs_to :card           dependent: :destroy


## destinationテーブル
|Column|Type|Options|
|------|----|-------|
| user_id          | integer | null: false, foreign_key: true|
| family_name      | string  | null: false|
| first_name       | string  | null: false|
| family_name_kana | string  | null: false|
| first_name_kane  | string  | null: false|
| post_code        | string  | null: false|
| prefecture       | string  | null: false|
| city             | string  | null: false|
| address          | string  | null: false|
| building_name    | string  ||
| phone_number     | string  ||

### Association
- belongs_to :user


## cardテーブル
|Column|Type|Options|
|------|----|-------|
| user_id     | integer | null: false, foreign_key: true |
| customer_id | string  | null: false |
| card_id     | string  | null: false |

### Association
- belongs_to :user


## categoryテーブル
|Column|Type|Options|
|------|----|-------|
| name     | string | null: false |
| ancestry | string ||

### Association
- has_many :products


## productテーブル

|Column|Type|Options|
|------|----|-------|
| name          | string  | null: false |
| price         | string  | null: false |
| description   | string  | null: false |
| status        | string  | null: false |
| size          | string  | null: false |
| shipping_cost | string  | null: false |
| shipping_days | string  | null: false |
| prefecture_id | string  | null: false |
| judgment      | string  ||
| category_id   | integer | null: false, foreign_key: true |
| brand_id      | integer | null: false, foreign_key: true |
| shipping_id   | integer | null: false, foreign_key: true |
| user_id       | integer | null: false, foreign_key: true |

### Association
- belongs_to :user       dependent: :destroy
- belongs_to :category   dependent: :destroy
- belongs_to :brand      dependent: :destroy
- has_many   :images     dependent: :destroy

- belongs_to_active_hash :prefecture


## imageテーブル
|Column|Type|Options|
|------|----|-------|
| image      | string  | null: false |
| product_id | integer | null: false, foreign_key: true |

### Association
- belongs_to :product


## brandテーブル
|Column|Type|Options|
|------|----|-------|
| name | string | index: true |

### Association
- has_many :products

# FURIMA

## 概要
フリマアプリ

## 本番環境

- URL

http://18.180.99.238/

- ID/Pass

ID: admin
Pass: 2222

- テスト用アカウント等

**購入者用**
メールアドレス: gonza@gmail.com
パスワード: 22222222

**購入用カード情報**
番号：4242424242424242
期限：2022/09
セキュリティコード：123

**出品者用**
メールアドレス名: doda@gmail.com
パスワード: 11111111


## 制作背景
プログラミングスクールで、メルカリ等を元にフリマアプリをチームで開発する課題が出されたため。

## DEMO

商品詳細画面で、選択された画像を拡大表示させ、次の画像も同様に拡大できる。
![113273450377e253b9a344925e25c958](https://user-images.githubusercontent.com/60601986/77987061-bedf3380-7353-11ea-8996-84a7b80840da.gif)

商品編集ページで、追加した画像が更新を押すと商品詳細画面でも追加されていることが確認できる。
![cacd3d06e20c680d2ff3632b964d4b74](https://user-images.githubusercontent.com/60601986/77986980-8a6b7780-7353-11ea-93a1-bf203a07aec4.gif)
![d968ea88e1ae3e1bbdc8a67b746cadd6](https://user-images.githubusercontent.com/60601986/77986968-7cb5f200-7353-11ea-8036-9d72e2d682e6.gif)

## 工夫したポイント
商品詳細ページにSwiperを導入し、選択された画像を大きく表示させました。
また、選択されていない画像の透明度を下げることで視覚的にわかりやすくし、矢印を押すと次の画像が選択・表示されるようにしました。

## 使用技術

HTML,SCSS,jQuery,Ruby,Rails,MySQL,AWS

## 課題や今後実装したい機能
検索機能の実装が完了できていないため、検索ワードで商品を探せるようにしていきたいです。