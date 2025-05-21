# flutter_template_app

Flutter Blueprint app.

source code 修正中

## アーキテクチャ

MVVM と オニオンアーキテクチャ を採用

## ディレクトリ構成

```
lib/
├── core/ : 共通コードを配置
│ ├── constants/ : 定数ファイル
│ ├── exceptions/ : 例外処理
│ ├── extensions/ : 拡張関数
│ ├── providers/ : グローバルで使用する provider(riverpod)
│ └── utils/ : ヘルパーメソッドなどの共通して使用できるメソッド
│
├── application/
│ └── application_service : アプリケーションサービス
│
├── domain/
│ ├── entities/ : エンティティ(freezed を使用したモデル)
│ ├── repositories/ : 抽象的なリポジトリインターフェース
│ └── usecases/ : ドメインサービス
│
├── infrastructure/
│ ├── api_client/ : http クライアント
│ └── repositories/ : リポジトリの具体
│
└── presentation/
│ ├── page/ : UI と notifier(viewmodel, application service の役割)
│ └── widgets/ : 共通の再利用可能な UI コンポーネント
│
├── app.dart
└── main.dart : エントリーポイント

```

## アーキテクチャ各層の説明

#### Presentation 層

- Presentation 層は、Widget や state, 描画周りのロジックを担当
- application service の責務も view model で担う（肥大化したら、分割する）
- Flutter に依存

#### Application 層

- Presentation 層と Domain 層の橋渡しの役割
- Dart に依存

#### Domain 層

- Domain 層はアプリケーションのコアとなり、他の層に依存しない
- Dart に依存

#### Infrastructure 層

- 外部リソース（API やデバイスのストレージなど）とやりとりする処理をまとめる
- Dart に依存

## 依存関係

```
Presentation 層, Infrastructure 層
↓                   ↓
(Application 層)
↓                   ↓
Domain 層(usecase)
↓                   ↓
Domain 層(entity, repository)

※Presentation層は application service も担っている view model が肥大化したら、
Presentation 層 と Domain 層(usecase) の間に Application層を追加する
```

```
page(Presentation) → notifier(Presentation) → usecase → repository(domain) ← repository(infrastructure)
```
