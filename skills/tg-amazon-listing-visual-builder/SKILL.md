---
name: tg-amazon-listing-visual-builder
description: "Create localized Amazon listing visual systems: five main-image directions, selected main image, eight supporting images, and A+ / ecommerce detail page visuals. Use when the user asks for Amazon or TikTok Shop listing images, main images, secondary images, A+ pages, ecommerce detail pages, competitor image analysis, marketplace visual conversion design, localized after-sales slogans, culture-matched image copy, AI image prompts, or finished marketplace image assets."
---

# TG Amazon Listing Visual Builder

## Overview

Build a complete marketplace visual conversion system for Amazon-style listings: first create five main-image directions, then use the user's chosen main image as the visual source of truth for eight supporting images and an A+ / ecommerce detail page. Treat TikTok Shop work with Amazon-grade clarity, compliance, and conversion logic unless the user gives stricter platform rules.

## Required References

Load these reference files before executing the matching work:

- Always read `references/workflow.md` for the two-phase operating flow.
- Always read `references/visual-rules.md` before designing the main image, supporting images, or A+ page.
- Always read `references/compliance-and-defect-check.md` before generating or accepting any image.
- Read `references/country-localization.md` whenever a target country, marketplace, language, or after-sales slogan is involved.
- Read `references/output-template.md` before presenting Phase 1 or Phase 2 results.

## Operating Defaults

- Reply to the user in Chinese unless they request another language.
- Put image copy, slogans, units, cultural references, and buyer-facing language in the target country's natural marketplace language.
- Default to global Amazon marketplaces and include Southeast Asia support: Vietnam, Thailand, Malaysia, Philippines, and Singapore.
- Support all product categories by deriving the visual strategy from the product, category norms, target buyer, and competitor images.
- Prioritize finished images. If a capable raster image tool such as image generation or image editing is available and source assets are sufficient, generate images directly. If exact product appearance, packaging text, or local-language typography cannot be preserved reliably, output production-ready prompts/briefs for a stronger image model or designer and explain what product image is still needed before upload-ready generation.
- Use Amazon-grade clarity for Amazon and TikTok Shop: high-resolution square product images by default, with A+ / detail page modules sized to the target upload slot or produced at 2x when exact slot size is unknown.
- When saving finished product images locally, use the output root provided by the user. If none is provided, create `finished-assets/` under the current working directory. Create one separate subfolder per product, named with product + target country + platform + date when possible, and keep that product's main image, supporting images, detail page images, prompts, and review notes inside that subfolder.
- Verify current platform rules from official sources when live accuracy matters and network access is available. If verification is unavailable, state that the compliance pass uses the stored rubric and ask the user to confirm before upload.

## Core Workflow

### Phase 0: Recognize Inputs

Identify what the user provided: product photos, product links, competitor links, competitor screenshots, existing listing text, selling points, target country, brand tone, category, or partial notes. Use whatever is available, and list missing inputs only when they materially block finished image generation.

### Phase 1: Main Image First

Create five distinct main-image directions based on the product and competitor analysis. Each direction must include visual style, composition, product treatment, target buyer logic, local-market fit, compliance notes, image prompt, negative prompt, and expected conversion advantage.

Stop after Phase 1 and ask the user to choose one main-image direction unless the user explicitly asks to continue without selection.

### Phase 2: Expand From Chosen Main Image

After the user chooses a main image, treat it as the visual source of truth. Build eight supporting images and the A+ / ecommerce detail page around the same positioning, color logic, lighting, image realism, product angle, local language, and trust message.

### Phase 3: Produce Finished Assets

When generating actual images, create a clear asset list with file purpose, target market language, platform use, and final review status. If generating prompts for another image model is more reliable than direct generation, produce model-specific prompts and explain the handoff reason in one sentence.

## Hard Rules

- Do not invent exact product appearance, certifications, awards, guarantees, dimensions, materials, or performance claims that the user did not provide.
- Do not use unauthorized brand logos, marketplace badges, certification seals, competitor marks, misleading UI elements, or fake review/rating graphics.
- Main image strategy must govern supporting images and the A+ page. Avoid disconnected styles across the image set.
- Every country-specific output must match local language, units, culture, living scenes, trust expectations, and after-sales phrasing.
- When people, hands, faces, bodies, skin, hair, clothing, homes, bathrooms, streets, or lifestyle scenes appear, match the model and environment to the target country or marketplace. Use natural local buyer representation, including appropriate skin tones, styling, household context, climate, modesty, and cultural norms. Avoid generic western-only models, stereotypes, costumes, flags, landmarks, religious symbols, or identity decoration unless the product context genuinely requires them.
- Avoid monotonous product-only visuals. For every product category, create varied but relevant usage scenes across the image set: home, travel, office, bathroom, outdoor, gift, storage, setup, comparison, close-up, and real-use moments as appropriate. For beauty tools, personal care tools, massage tools, fitness tools, or wearable products, show multiple safe use positions or body areas only when the product supports them, and never pair those scenes with unsupported medical, slimming, body-shaping, or before/after claims.
- Every image prompt must include defect prevention for AI artifacts: no product deformation, no body/object intersection, no malformed hands, no warped packaging text, no floating objects, no impossible perspective, no inconsistent SKU color or quantity.
- Keep the user's decision point intact: five main-image directions first, then the chosen direction drives the rest.

## Typical User Requests

- "帮我给这个亚马逊产品做主图、副图和详情页。"
- "分析这些竞品图，给我做 5 套主图方案。"
- "我选第 3 套主图，继续做 8 张副图和 A+ 页面。"
- "目标国家是泰国，图片文案和售后标语都本地化。"
- "按亚马逊标准做 TikTok Shop 的产品套图。"

## Delivery Standard

Deliver a practical operator-facing result: concise analysis in Chinese, buyer-facing copy in the target language, production-ready prompts or generated assets, and a compliance/defect review that clearly states whether the output is upload-ready, needs source images, or needs manual design refinement.
