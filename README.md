# テーブル設計

## users テーブル

| Column             | Type   | Options     | Key   |
| ------------------ | ------ | ----------- | ----- |
| name               | string | null: false |       |
| email              | string | null: false | uni   |
| encrypted_password | string | null: false |       |
| profile            | text   | null: false |       |
| occupation         | text   | null: false |       |
| position           | text   | null: false |       |


### Association

- has_many :prototypes
- has_many :comments

## prototypes テーブル

| Column     | Type       | Options     | Key  |
| ---------- | ---------- | ----------- | ---- |
| title      | string     | null: false |      |
| catch_copy | text       | null: false |      |
| concept    | text       | null: false |      |
| user       | references | null: false | true |

### Association

- has_many :comments
- belongs_to :user

## comments テーブル

| Column     | Type       | Options     |
| ---------- | ---------- | ----------- |
| content    | text       | null: false |
| prototype  | references | null: false |
| user       | references | null: false |

### Association

- belongs_to :prototype
- belongs_to :user