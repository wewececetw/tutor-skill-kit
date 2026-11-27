#!/usr/bin/env bash
# 把 tutor-skill-kit 的 .cursor 與 templates 拷進目標課程專案。
set -euo pipefail

KIT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TARGET="${1:-}"

if [[ -z "$TARGET" ]]; then
  echo "用法: $0 /path/to/new-course-repo"
  exit 1
fi

if [[ ! -d "$TARGET" ]]; then
  echo "目標不存在: $TARGET"
  exit 1
fi

mkdir -p "$TARGET/.cursor/skills" "$TARGET/.cursor/rules" "$TARGET/docs"

cp -R "$KIT_ROOT/.cursor/skills/course-teacher" "$TARGET/.cursor/skills/"
cp -R "$KIT_ROOT/.cursor/skills/update-handoff" "$TARGET/.cursor/skills/"
cp -R "$KIT_ROOT/.cursor/skills/phone-lesson" "$TARGET/.cursor/skills/"
cp "$KIT_ROOT/.cursor/rules/learning-curriculum.mdc" "$TARGET/.cursor/rules/"

if [[ ! -f "$TARGET/README.md" ]]; then
  cp "$KIT_ROOT/templates/README.course.md" "$TARGET/README.md"
  echo "已建立 README.md（來自 templates）"
else
  echo "已有 README.md，略過（範本在 kit/templates/README.course.md）"
fi

if [[ ! -f "$TARGET/docs/handoff.md" ]]; then
  cp "$KIT_ROOT/templates/docs/handoff.md" "$TARGET/docs/handoff.md"
  echo "已建立 docs/handoff.md"
else
  echo "已有 docs/handoff.md，略過"
fi

echo "完成。下一步：編輯 $TARGET/.cursor/skills/course-teacher/SKILL.md 的 {{...}} 佔位符。"
