# README

## userテーブル
|Column|Type|Options|
|------|----|-------|
|tel|string|
|day|string|
|name|string|
### Association
- has_many :orders

## orderテーブル
|Column|Type|Options|
|------|----|-------|
|food|string|
|price|string|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
