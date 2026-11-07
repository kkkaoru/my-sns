# YouTube

アカウントごとに `accounts/<account-id>/` を作成して運用します。

```bash
./scripts/new-account.sh youtube <account-id>
```

## アカウント一覧

| account-id | チャンネル名 | URL | ステータス |
| --- | --- | --- | --- |
| | | | |

## アカウント内の構成

| ディレクトリ | 用途 |
| --- | --- |
| `README.md` | プロフィール・コンセプト・運用ルール・KPI |
| `ideas/` | 企画ネタ |
| `scripts/` | 動画台本 |
| `thumbnails/` | サムネイル画像・案 |
| `drafts/` | タイトル・概要欄・タグの下書き |
| `published/` | 公開済み動画の記録（URL・公開日） |
| `assets/` | 動画用素材（BGM・効果音・画像） |
| `analytics/` | 再生数・視聴維持率などの記録 |

> 動画ファイル本体は容量が大きいため Git 管理しません（`.gitignore` 参照）。
