# tutor-skill-kit

可重複使用的「空白導師」模板：把上課方法（一次一題、對照教學、handoff）抽成 skill／rule，開新課時複製進去再填課綱。

## 這份 repo 有什麼

```
.cursor/
  skills/
    course-teacher/   # 上課主 skill（空白＋佔位符）
    update-handoff/   # 進度寫 docs/handoff.md
    phone-lesson/     # 手機看課時貼完整碼
  rules/
    learning-curriculum.mdc   # 短契約，alwaysApply
templates/
  README.course.md    # 新課 README 範本
  docs/handoff.md     # 交接檔範本
scripts/
  bootstrap-course.sh # 一鍵拷進目標專案
```

**不含**任何語言／框架課綱內容（C#、MLOps…）。課綱寫在目標專案的 `README.md`。

## 開一門新課

```bash
# 例：開 mlops-lab
./scripts/bootstrap-course.sh /path/to/mlops-lab
```

然後在目標專案：

1. 改 `.cursor/skills/course-teacher/SKILL.md` 裡所有 `{{...}}`
2. （可選）把 skill 資料夾改名，例如 `mlops-teacher`，並同步改 rule 裡的名稱
3. 用 `templates/` 覆寫成該課的 `README.md`、`docs/handoff.md`
4. 開對話，讓 AI 讀 skill → 跑第 0 步（3 題程度確認）

## 設計原則

| 放在 kit（共用） | 放在各課 repo（專屬） |
|---|---|
| 一次一題、先帶寫法再出題 | 章節／階段清單 |
| 檢查問、面試金句、handoff | 對照表（PHP↔X） |
| 短題面版面 | 專案目錄、驗收指令 |

改「怎麼教」→ 改本 kit，再同步到各課。  
改「教什麼」→ 只改該課 README／teacher 佔位符。

## 現有課參考

- `mini-admin` → `csharp-teacher`（C#／ASP.NET／Angular）
- `mlops-lab` → `mlops-teacher`（MLOps）
