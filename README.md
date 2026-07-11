# TG Ecommerce Skills

面向跨境电商内容制作的 Codex Skills 开源合集。当前包含两个可独立安装的 skill：一个负责 UGC 带货短视频导演包，另一个负责 Amazon / TikTok Shop 商品视觉系统。

这些 skill 提供的是可复用工作流、提示词结构和质量检查规则，不包含 API Key、客户素材或平台账号，也不承诺流量、销量或平台审核结果。

## 包含的 Skills

| Skill | 主要用途 | 核心交付物 |
| --- | --- | --- |
| [`tg-product-ugc-video`](skills/tg-product-ugc-video/SKILL.md) | 把产品图片或产品描述转换成跨境 UGC 带货视频制作方案 | 受众分析、UGC 风格、达人设定、开头钩子、口播稿、分镜、即梦图片/视频提示词、剪辑表、字幕和质检清单 |
| [`tg-amazon-listing-visual-builder`](skills/tg-amazon-listing-visual-builder/SKILL.md) | 为 Amazon 或 TikTok Shop 构建本地化商品视觉系统 | 5 套主图方向、8 张副图方案、A+ / 详情页模块、当地语言文案、AI 出图提示词、合规与缺陷检查 |

## 目录说明

```text
tg-ecommerce-skills/
├── README.md
├── LICENSE
├── .gitattributes
├── .gitignore
├── scripts/
│   ├── install.ps1
│   └── install.sh
└── skills/
    ├── tg-product-ugc-video/
    │   ├── SKILL.md
    │   ├── agents/
    │   │   └── openai.yaml
    │   └── references/
    └── tg-amazon-listing-visual-builder/
        ├── SKILL.md
        ├── agents/
        │   └── openai.yaml
        └── references/
```

- `SKILL.md`：skill 的触发条件、执行流程和硬性规则。
- `agents/openai.yaml`：Codex 界面展示名称、简介和默认调用提示。
- `references/`：按需加载的详细流程、模板、提示词规范和质量检查标准。
- `scripts/`：把一个或全部 skill 安装到本机 Codex skill 目录。

## 安装

### 前置条件

- 已安装并能使用 Codex Desktop 或 Codex CLI。
- 使用 Git 克隆仓库，或者从 GitHub 下载并解压 ZIP。

克隆仓库：

```bash
git clone https://github.com/aa279889822-droid/tg-ecommerce-skills.git
cd tg-ecommerce-skills
```

### Windows PowerShell

安装全部 skill：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\install.ps1 -Skill all
```

只安装一个：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\install.ps1 -Skill tg-product-ugc-video
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\install.ps1 -Skill tg-amazon-listing-visual-builder
```

升级已有安装：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\install.ps1 -Skill all -Force
```

### macOS / Linux

安装全部 skill：

```bash
chmod +x scripts/install.sh
./scripts/install.sh all
```

只安装一个或覆盖升级：

```bash
./scripts/install.sh tg-product-ugc-video
./scripts/install.sh tg-amazon-listing-visual-builder --force
```

### 手动安装

将需要的整个 skill 文件夹复制到：

- 设置了 `CODEX_HOME`：`$CODEX_HOME/skills/`
- 未设置 `CODEX_HOME`：`~/.codex/skills/`
- Windows 默认位置：`$HOME\.codex\skills\`

请保留 `SKILL.md`、`agents/` 和 `references/` 的相对目录结构。安装后重新启动 Codex，或新建一个任务让 skill 列表重新加载。

## 使用方法

### 1. UGC 带货视频导演包

`tg-product-ugc-video` 适用于 TikTok、Instagram Reels、YouTube Shorts、抖音、小红书和电商详情视频等场景。

建议提供：

- 产品图片、商品链接或产品描述
- 目标国家或地区
- 发布平台
- 视频时长：15、30 或 45 秒
- 官方卖点与不能使用的宣传说法
- 期望的 UGC 风格；不确定时可以让 skill 自动推荐

调用示例：

```text
使用 $tg-product-ugc-video，根据这张产品图制作一套面向美国 TikTok 的 30 秒 UGC 带货视频导演包。请自动选择达人类型和风格，并提供英文口播、中文解释、分镜、即梦提示词、剪辑表和字幕结构。
```

```text
使用 $tg-product-ugc-video，为这个英国站家居产品做 15 秒痛点型短视频。不要做医疗或效果保证，先向我确认缺失信息。
```

主要输出：

1. 项目参数、产品与目标受众分析。
2. 主 UGC 风格、备用风格和虚拟达人设定。
3. 5 个开头钩子和目标市场语言口播稿。
4. 带时间码的镜头表、即梦图片提示词和逐镜头视频提示词。
5. 剪辑节奏、字幕结构、执行清单和质量检查清单。

### 2. Amazon / TikTok Shop 商品视觉系统

`tg-amazon-listing-visual-builder` 适用于 Amazon 主图、副图、A+ 页面，以及需要 Amazon 级清晰度的 TikTok Shop 商品套图。

建议提供：

- 清晰的产品图片，最好包含正面、侧面、包装和配件
- 目标国家、站点和图片语言
- 产品尺寸、材质、包装清单和可证明的卖点
- 3 至 5 个竞品链接或截图（可选，但有助于形成差异化）
- 品牌颜色、字体、标志使用规则和售后政策（如有）

调用示例：

```text
使用 $tg-amazon-listing-visual-builder，分析这些产品图和竞品图，为德国 Amazon 站生成 5 套主图方向。图片文案使用自然德语，先停在第一阶段让我选择，不要提前制作副图。
```

```text
使用 $tg-amazon-listing-visual-builder。我选择第 3 套主图，请按同一视觉母版继续设计 8 张副图和 A+ 页面，并给出每张图的提示词、负面提示词和合规检查结果。
```

标准流程：

1. 识别产品、市场、竞品和品牌输入。
2. 先交付 5 个真正不同的主图方向。
3. 用户选择一个主图方向。
4. 按选定方向扩展 8 张副图和 A+ / 详情页。
5. 对产品一致性、图片缺陷、当地语言和平台合规进行复核。

默认将生成的本地成品放在当前工作目录下的 `finished-assets/`。该目录已被 Git 忽略，避免误提交客户产品图和生成素材。

## 更新与卸载

更新仓库后重新运行安装脚本：

```bash
git pull
```

Windows 使用 `-Force`，macOS / Linux 使用 `--force` 覆盖旧版本。

卸载时，只需从 Codex skills 目录删除对应的完整文件夹：

- `tg-product-ugc-video`
- `tg-amazon-listing-visual-builder`

## 使用边界

- 生成图片需要当前 Agent 环境具备图片生成或图片编辑能力；否则 skill 会输出可交给其他模型或设计师的生产提示词。
- `tg-product-ugc-video` 中的即梦提示词需要用户自行在即梦或相应工具中执行，除非当前环境已配置对应工具。
- Amazon、TikTok Shop 等平台规则会变化。正式上传前，应以目标站点的最新官方规则为准。
- 医疗、健康、儿童、食品接触、电子安全、美妆功效等敏感类目必须提供可证明资料，并进行人工合规复核。
- 不要把 API Key、账号密码、未公开客户资料或受版权保护的竞品原文件提交到公开仓库。

## 开源协议与声明

本项目采用 [MIT License](LICENSE)。欢迎个人和商业项目使用、修改与分发，但请保留许可证和版权声明。

Amazon、TikTok、TikTok Shop、Jimeng / 即梦、OpenAI、Codex 以及其他名称和商标归各自权利人所有。本项目与这些平台或公司没有隶属、授权或背书关系。

## English Quick Start

This repository contains two Codex skills for cross-border ecommerce production:

- `tg-product-ugc-video` creates a complete UGC video director package from a product image or description.
- `tg-amazon-listing-visual-builder` creates localized marketplace main-image directions, supporting-image plans, and A+ / detail-page systems.

Install all skills with `powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\install.ps1 -Skill all` on Windows or `./scripts/install.sh all` on macOS/Linux. Then start a new Codex task and explicitly invoke `$tg-product-ugc-video` or `$tg-amazon-listing-visual-builder`.
