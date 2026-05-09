# 互动单词学习项目 📖

> **Fun Vocabulary Learning** — 专为 Michelle 打造的英语词汇互动学习项目

---

## 🎯 项目简介

本项目基于 **Caesar's English II** 经典词汇教材，整合拉丁词根、文学引用与互动练习题，帮助学习者系统掌握高阶英语词汇。

## 🔗 在线访问

**http://118.25.80.19/parent-workshop/interactive-vocabulary/**

Michelle 可以直接通过浏览器访问，无需安装任何软件。

## 🔄 更新流程

### 方式一：一键提交并部署（推荐）

```bash
./commit-and-deploy.sh "简短的更新说明"
```

会自动执行：`git add → commit → push → scp 部署 → 验证`

### 方式二：分步操作

```bash
# 1. Git 版本管理
git add -A
git commit -m "更新说明"
git push

# 2. 部署到服务器
./deploy.sh
```

## 📁 项目结构

```
├── index.html              # 主页面（词汇学习资料）
├── README.md               # 项目说明
├── quizlet-research-report.md  # Quizlet 功能研究报告
├── deploy.sh               # 部署脚本
└── commit-and-deploy.sh    # 一键提交部署脚本
```

## ✍️ 内容特色

- 全局词表（A-Z 排序）
- 按单元梳理的近义词与反义词
- 元练习题与答案
- 精致的书籍风格排版

## 🔄 更新历史

| 日期 | 版本 | 说明 |
|------|------|------|
| 2026-05-09 | v1.1 | 添加 Quizlet 研究报告、一键部署脚本 |
| 2026-05-08 | v1.0 | 项目初始化，完整词汇学习资料 |

---

**运营方**: 猎爸精选 · 湾区父母基本功论坛
