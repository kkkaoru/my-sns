# 𝕏

アカウントごとに `accounts/<account-id>/` を作成して運用します。

```bash
./scripts/new-account.sh x <account-id>
```

## アカウント一覧

| account-id | アカウント名 | URL | ステータス |
| --- | --- | --- | --- |
| | | | |

## 構成

| パス | 用途 |
| --- | --- |
| `x-algorithm/` | git submodule: [xai-org/x-algorithm](https://github.com/xai-org/x-algorithm)（全アカウント共通の参照資料） |
| `accounts/<account-id>/README.md` | プロフィール・コンセプト・運用ルール・KPI |
| `accounts/<account-id>/ideas/` | ポストのネタ |
| `accounts/<account-id>/drafts/` | ポスト・スレッドの下書き |
| `accounts/<account-id>/published/` | 投稿済みポストの記録（URL・投稿日） |
| `accounts/<account-id>/assets/` | 画像・動画素材 |
| `accounts/<account-id>/analytics/` | インプレッション・エンゲージメントの記録 |

## x-algorithm submodule

```bash
# 初回取得
git submodule update --init platforms/x/x-algorithm

# 最新に更新
git submodule update --remote platforms/x/x-algorithm
```

`x-algorithm/` 内は直接編集せず、読み取って運用方針の参考にします。
