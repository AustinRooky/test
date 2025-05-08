# 🛠 Git 团队协作规范（适用于多人开发）

---

## 1️⃣ 分支管理策略（基于主干开发）

我们采用 **主干 + 功能分支模型** 进行开发。

### ✅ 分支结构：

| 分支名                | 说明                     |
| ------------------ | ---------------------- |
| `main`（或 `master`） | 生产环境分支，仅合并已发布版本代码      |
| `dev`              | 日常开发主分支，所有功能合并后统一测试    |
| `feature/*`        | 功能开发分支，由开发者基于 `dev` 创建 |
| `bugfix/*`         | Bug 修复分支，针对开发环境问题      |
| `hotfix/*`         | 紧急修复分支，针对生产环境问题        |
| `release/*`        | 发布准备分支（可选）             |

---

## 2️⃣ 分支命名规范

* 使用全小写，单词间用中划线 `-` 分隔
* 命名意义清晰，能看出分支用途

| 类型 | 命名格式              | 示例                        |
| -- | ----------------- | ------------------------- |
| 功能 | `feature/模块名-功能名` | `feature/user-login`      |
| 修复 | `bugfix/模块名-问题简述` | `bugfix/cart-null-crash`  |
| 热修 | `hotfix/版本号-问题`   | `hotfix/v1.2-login-error` |
| 发布 | `release/版本号`     | `release/v1.3.0`          |

---

## 3️⃣ 开发流程

```plaintext
1. git checkout dev
2. git pull
3. git checkout -b feature/xxx

... 进行开发 ...

4. git add .
5. git commit -m "feat: 完成 XXX 功能"
6. git push origin feature/xxx

7. GitHub 上创建 PR → base: dev ← compare: feature/xxx
```

---

## 4️⃣ 提交规范（Commit Message）

采用 `类型: 描述` 格式，主要类型如下：

| 类型         | 含义              |
| ---------- | --------------- |
| `feat`     | 新功能             |
| `fix`      | 修 bug           |
| `docs`     | 文档变更            |
| `style`    | 格式变更（空格、缩进、分号等） |
| `refactor` | 重构代码（无功能变化）     |
| `test`     | 添加或修改测试代码       |
| `chore`    | 杂项（构建过程、辅助工具等）  |

### ✅ 示例：

```bash
git commit -m "feat: 添加用户登录页面"
git commit -m "fix: 修复注册按钮无响应问题"
```

---

## 5️⃣ Pull Request 流程规范

1. 功能开发完成后，**push 到远程仓库**并发起 PR
2. PR 标题简洁说明改动，内容中应包括：

   * 修改点概述
   * 是否存在兼容性或风险
   * 是否需要其他人测试
3. 至少 **一人审核通过**后再合并
4. 合并后可选删除该功能分支

---

## 6️⃣ 代码审核规范（Review Checklist）

* [ ] 命名是否清晰、一致？
* [ ] 是否存在重复代码？
* [ ] 是否有必要的注释？
* [ ] 是否覆盖了对应测试？
* [ ] 是否影响旧有功能？
* [ ] 是否遵循提交与分支命名规范？

---

## 7️⃣ 推荐插件与工具

| 工具                       | 用途           |
| ------------------------ | ------------ |
| GitLens (VS Code)        | 分支/提交历史可视化   |
| Prettier / ESLint        | 自动格式化与代码规范检查 |
| Husky + lint-staged      | 预提交钩子，强制检查   |
| GitHub Projects / Issues | 协作任务管理（可选）   |

---

## 📌 附：常见 Git 命令速查表

```bash
# 新建分支并切换
git checkout -b feature/xxx

# 拉取远程更新并合并
git pull origin dev

# 推送本地分支
git push origin feature/xxx

# 删除本地和远程分支
git branch -d feature/xxx
git push origin --delete feature/xxx
```
