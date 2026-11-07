# my-sns

YouTube / 𝕏 / TikTok / Instagram の SNS 運用リポジトリ。
企画・台本・下書き・投稿済みアーカイブ・分析をプラットフォームごとに管理します。

## ディレクトリ構成

```
my-sns/
├── docs/                      # 運用全体の方針・ルール
│   ├── strategy.md            # 目的・ターゲット・KPI
│   ├── brand-guidelines.md    # トーン&マナー・ビジュアル規定
│   ├── content-calendar.md    # 投稿カレンダー
│   └── workflow.md            # 企画 → 制作 → 投稿 → 分析の流れ
├── shared/                    # 全プラットフォーム共通
│   ├── assets/                # ロゴ・フォント・画像素材
│   └── templates/             # 企画書・投稿・レポートのテンプレート
├── platforms/
│   ├── youtube/
│   │   ├── ideas/             # 企画ネタ
│   │   ├── scripts/           # 動画台本
│   │   ├── thumbnails/        # サムネイル
│   │   ├── drafts/            # タイトル・概要欄などの下書き
│   │   ├── published/         # 公開済みアーカイブ
│   │   ├── assets/            # 動画用素材
│   │   └── analytics/         # 数値・振り返り
│   ├── x/
│   │   ├── x-algorithm/       # git submodule: xai-org/x-algorithm
│   │   ├── ideas/  drafts/  published/  assets/  analytics/
│   ├── tiktok/
│   │   ├── ideas/  scripts/  drafts/  published/  assets/  analytics/
│   └── instagram/
│       ├── ideas/  reels/  stories/  drafts/  published/  assets/  analytics/
├── analytics/                 # 横断分析
│   ├── data/                  # エクスポートした生データ
│   └── reports/               # 週次・月次レポート
└── scripts/                   # 自動化スクリプト
```

## コンテンツのライフサイクル

1. `ideas/` にネタを追加（`shared/templates/idea.md` をコピー）
2. 制作中は `scripts/` / `drafts/` で作業
3. 投稿したら `published/YYYY/YYYY-MM-DD_slug.md` に移動し、URL を記録
4. 数値を `analytics/` に記録し、`analytics/reports/` で振り返り

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
