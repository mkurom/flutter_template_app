# flutter_template_app

Flutter Blueprint app.

## アーキテクチャ

MVVM とクリーンアーキテクチャを採用

## ディレクトリ構成

```
lib/
├── constants/ : 定数ファイル
│
├── core/ : 共通コードを配置
│ ├── exceptions/ : 例外処理
│ ├── extensions/ : 拡張関数
│ ├── network/ : http クライアント
│ ├── providers/ : グローバルで使用する provider(riverpod)
│ └── utils/ : ヘルパーメソッドなどの共通して使用できるメソッド
│
├── infrastructure/
│ ├── api_client/ : http クライアント
│ └── repositories/ : リポジトリの具体
│
├── domain/
│ ├── entities/ : エンティティ(freezed を使用したモデル)
│ ├── repositories/ : 抽象的なリポジトリインターフェース
│ └── usecases/ : ドメインサービス
│
└── presentation/
  ├── page/ : UI と notifier(viewmodel, application service の役割)
  └── widgets/ : 共通の再利用可能な UI コンポーネント
```

## アーキテクチャ各層の説明

#### Presentation 層

- Presentation 層は、Widget や state, 描画周りのロジックを担当
- FLutter に依存

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
Domain 層(usecase)  ↓
↓                   ↓
Domain 層(entity, repository)
```

```
page(Presentation) → notifier(Presentation) → usecase → repository(domain) ← repository(infrastructure)
```
