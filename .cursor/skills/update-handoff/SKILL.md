---
name: update-handoff
description: >-
  章節／階段結束或進度變動時更新 docs/handoff.md，供下次開新對話同步。
  Use when 章節完成、階段完成、打勾 README、寫好了綠燈收尾、更新 handoff、同步進度。
---

# 更新學習交接檔（handoff）

進度結束時**必須**更新 `docs/handoff.md`，不要等使用者再提醒。

## 何時執行

以下任一發生就做：

- 一章／階段驗收過關，並在 `README.md` 打勾
- 第 0 步問完、課綱已調整
- 時程／下一步有變
- 使用者說「更新 handoff」／「同步進度」

## 怎麼更新

1. 讀現有 `docs/handoff.md` 與 `README.md` 進度表
2. 改這些欄位（其餘結構維持）：
   - **更新時間**（當天日期）
   - **進度**：已完成、進行中、下一步
   - **今天／本次**：剛做完的重點
   - **學生卡過、需鞏固**：只追加這次新卡點
   - **開場句**：對準下一步
3. 用繁體中文、精簡；不要貼整章講義
4. 回使用者一句：已更新 `docs/handoff.md`

## 不要做的事

- 不要為了 handoff 改程式碼
- 不要自動 push（除非使用者這次明確說 commit／push）
- 不要刪掉仍有效的卡點紀錄

## 與上課 skill 的關係

`course-teacher`（或該課改名後的 teacher skill）在「過關 + README 打勾」收尾後，接著執行本 skill。
