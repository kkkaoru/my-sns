# my-sns

YouTube / 𝕏 / TikTok / Instagram の SNS 運用リポジトリ。
企画・台本・下書き・投稿済みアーカイブ・分析をプラットフォームごとに管理します。

## ディレクトリ構成

```
my-sns/
├── docs/                      # 運用全体の方針・ルール
│   ├── strategy.md            # 目的・ターゲット・KPI
│   ├── accounts.md            # 全アカウント一覧
│   ├── brand-guidelines.md    # トーン&マナー・ビジュアル規定
│   ├── content-calendar.md    # 投稿カレンダー
│   └── workflow.md            # 企画 → 制作 → 投稿 → 分析の流れ
├── shared/                    # 全プラットフォーム共通
│   ├── assets/                # ロゴ・フォント・画像素材
│   └── templates/             # 企画書・投稿・レポートのテンプレート
├── platforms/
│   ├── youtube/
│   │   └── accounts/
│   │       ├── _template/         # 新規アカウントの雛形
│   │       └── <account-id>/      # アカウントごとに1ディレクトリ
│   │           ├── README.md      # プロフィール・コンセプト・KPI
│   │           ├── ideas/  scripts/  thumbnails/  drafts/
│   │           └── published/  assets/  analytics/
│   ├── x/
│   │   ├── x-algorithm/           # git submodule: xai-org/x-algorithm（全アカウント共通）
│   │   └── accounts/<account-id>/ # ideas/ drafts/ published/ assets/ analytics/
│   ├── tiktok/
│   │   └── accounts/<account-id>/ # ideas/ scripts/ drafts/ published/ assets/ analytics/
│   └── instagram/
│       └── accounts/<account-id>/ # ideas/ reels/ stories/ drafts/ published/ assets/ analytics/
├── analytics/                 # 横断分析
│   ├── data/                  # エクスポートした生データ
│   └── reports/               # 週次・月次レポート
└── scripts/
    └── new-account.sh         # アカウント追加スクリプト
```

## アカウントの追加

各プラットフォームで複数アカウントを運用できます。アカウントは `platforms/<platform>/accounts/<account-id>/` に置きます。

```bash
./scripts/new-account.sh youtube main
./scripts/new-account.sh x sub-tech
```

作成後、アカウントの `README.md` にプロフィールを記入し、[`docs/accounts.md`](docs/accounts.md) に追記します。

## コンテンツのライフサイクル

以下はすべて各アカウントのディレクトリ内で行います。

1. `ideas/` にネタを追加（`shared/templates/idea.md` をコピー）
2. 制作中は `scripts/` / `drafts/` で作業
3. 投稿したら `published/YYYY/YYYY-MM-DD_slug.md` に移動し、URL を記録
4. 数値をアカウントの `analytics/` に記録し、横断の振り返りはルートの `analytics/reports/` で行う

ファイル名は `YYYY-MM-DD_slug.md`（例: `2026-11-07_morning-routine.md`）に統一します。

## セットアップ

```bash
git clone --recurse-submodules git@github.com:kkkaoru/my-sns.git
```

既にクローン済みの場合:

```bash
git submodule update --init --recursive
```

submodule（x-algorithm）を最新に更新:

```bash
git submodule update --remote platforms/x/x-algorithm
```
