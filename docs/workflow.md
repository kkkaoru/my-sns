# 運用ワークフロー

```
ideas/ → scripts/ or drafts/ → published/ → analytics/
 企画       制作                 公開         振り返り
```

## ステータス
- `idea`: ネタ段階
- `draft`: 制作中
- `scheduled`: 予約投稿済み
- `published`: 公開済み

各ファイル先頭の frontmatter の `status` を更新して管理します。

## マルチ展開
1つのネタを複数プラットフォームへ展開する場合は、frontmatter の `related` に関連ファイルを記載します。
例: YouTube 本編 → TikTok / Instagram Reels に切り抜き → 𝕏 で告知
