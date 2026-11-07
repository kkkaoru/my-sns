#!/usr/bin/env bash
# 新しいアカウント用ディレクトリをテンプレートから作成する
# usage: ./scripts/new-account.sh <platform> <account-id>
#   platform:   youtube | x | tiktok | instagram
#   account-id: 英小文字・数字・ハイフン（例: main, sub-gaming）
set -euo pipefail

usage() {
  echo "usage: $0 <youtube|x|tiktok|instagram> <account-id>" >&2
  exit 1
}

[[ $# -eq 2 ]] || usage
platform=$1
account=$2

case "$platform" in
  youtube|x|tiktok|instagram) ;;
  *) echo "error: unknown platform '$platform'" >&2; usage ;;
esac

if [[ ! "$account" =~ ^[a-z0-9][a-z0-9-]*$ ]]; then
  echo "error: account-id は英小文字・数字・ハイフンのみ使用できます: '$account'" >&2
  exit 1
fi

root=$(cd "$(dirname "$0")/.." && pwd)
src="$root/platforms/$platform/accounts/_template"
dest="$root/platforms/$platform/accounts/$account"

if [[ -e "$dest" ]]; then
  echo "error: already exists: platforms/$platform/accounts/$account" >&2
  exit 1
fi

cp -R "$src" "$dest"
echo "created: platforms/$platform/accounts/$account"
echo "next: platforms/$platform/accounts/$account/README.md にプロフィールを記入し、"
echo "      platforms/$platform/README.md と docs/accounts.md のアカウント一覧に追記してください。"
