---
name: tg-product-ugc-video
description: Generate a complete cross-border UGC product video director package from a product image or product description. Use when the user wants to create TikTok/Reels/Shorts/Douyin/Xiaohongshu-style ecommerce videos, product seeding videos, AI UGC ads, Jimeng image/video prompts, hooks, voiceover scripts, shot lists, editing plans, or subtitle structures for any product category.
---

# TG Product UGC Video

## Overview

Use this skill to turn one product image or product description into a small-business-friendly, professional UGC video package. The package must help beginners, teams, and clients move from "I have a product" to "I know what to generate, shoot, edit, and subtitle."

Do not promise viral results. Produce practical assets that can be copied into Jimeng or handed to an editor.

## Required References

Read the relevant references before producing the final package:

- Read `references/intake-checklist.md` whenever required user inputs are missing.
- Read `references/output-blueprint.md` before generating the final UGC director package.
- Read `references/ugc-style-library.md` when selecting or explaining UGC styles.
- Read `references/jimeng-prompt-rules.md` before writing image or video prompts for Jimeng.
- Read `references/subtitle-editing-structure.md` before writing editing scripts or subtitle structures.

For ordinary "make a UGC package" requests, read all five references.

## Workflow

### 1. Identify Inputs

Check whether the user provided:

- Product image, product page, product name, or product description
- Target country or region
- Publishing platform
- Video duration: 15s, 30s, or 45s
- UGC style choice, or permission to auto-select
- Product selling points, or permission to infer from the image

If the product image is unavailable, continue from text only if the user agrees. Clearly label inferred details.

### 2. Ask Intake Questions

Before producing the final package, ask for missing critical inputs from `references/intake-checklist.md`.

Keep questions beginner-friendly. If the user is unsure, offer defaults:

- Target country: ask the user to choose
- Duration: 15s for fast conversion, 30s for balanced demo, 45s for fuller education
- UGC style: auto-select based on product and market
- Language: match target country
- Product selling points: infer first, then ask user to confirm

Do not accept vague prompts such as "make me a viral video" as enough information. Convert them into the intake questions.

### 3. Analyze Product and Market

Infer or summarize:

- Product category and visible product attributes
- Likely target audience
- User pain point or desire
- Main conversion angle
- Trust-building proof style
- Risky claims to avoid

For regulated categories such as health, beauty, supplements, finance, children, or medical-like products, avoid unsupported guarantees and add a compliance caution.

### 4. Select UGC Style

Use `references/ugc-style-library.md` to recommend one primary style and one backup style from:

- Real-person review
- Unboxing
- Pain-point rant
- Before/after comparison
- Casual selfie
- Influencer recommendation
- Mini drama

If the user already selected a style, respect it unless it conflicts with the product, country, or platform.

### 5. Produce the Director Package

Use `references/output-blueprint.md` as the final structure. Include:

- Project settings
- Product and audience analysis
- UGC style recommendation
- Virtual creator/persona
- Hook options
- Voiceover script in the matched language
- Chinese explanation if the user is Chinese-speaking
- Shot list with timestamps
- Jimeng image prompts
- Jimeng video prompts
- Editing script
- Subtitle file structure
- Beginner execution checklist
- Quality control checklist

Make the output copy-ready. Use clear section names, numbered steps, and prompt blocks.

### 6. Jimeng Prompt Rules

For Jimeng image generation:

- Describe a realistic creator, real scene, lighting, camera style, product interaction, and authenticity signals.
- Avoid over-polished ad language.
- Add negative constraints: no watermark, no distorted hands, no extra fingers, no unreadable or distorted product label, no AI plastic skin.
- Add anti-clipping constraints: the product, hands, clothing, hair, and body must have clear physical boundaries; no object should pass through skin, fabric, fingers, jewelry, straps, collars, or props. For wearable or pinned products, specify that the product sits on top of the fabric with a plausible contact point.

For Jimeng video generation:

- Reference both the character image and product image when available.
- Mark the character and product explicitly in the prompt.
- Keep action simple and physically plausible.
- Keep one video prompt focused on one shot.
- Include a clipping warning in every shot where the character touches, wears, pins, clips, holds, or places the product.

### 7. Output Language

Default conversation language is Chinese unless the user asks otherwise.

For Chinese-speaking users, write the execution package, Jimeng prompts, explanations, editing notes, checklists, and other non-audience-facing output in Chinese by default. Keep only audience-facing language assets, such as voiceover, spoken lines, subtitles/SRT, and optional on-screen text, in the target country's language unless the user asks otherwise.

For video scripts and captions, match the target country:

- United States: American English
- United Kingdom: British English
- Australia: Australian English
- Canada: North American English, unless French Canada is specified
- Japan: Japanese
- Korea: Korean
- Mainland China: Chinese
- Other markets: infer the dominant language and state the assumption

If the target market is multilingual, ask the user which language version to produce.

## Output Discipline

- Do not skip intake unless the user explicitly asks to use defaults.
- Do not output only a script when the user requested the full package.
- Do not use generic "high quality product video" prompts. Include product-specific details.
- Do not claim the video will go viral, cure conditions, guarantee revenue, or bypass platform review.
- Do not omit anti-clipping warnings for wearable, handheld, jewelry, apparel, accessory, bag, shoe, furniture, pet, or body-contact products.
- For Jimeng copy packs, prefer concise Chinese prompt blocks and split prompts by shot so each block can be copied directly.
- Keep the package practical for a beginner to execute.
