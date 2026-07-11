# Workflow

## Purpose

Use this workflow to turn mixed product materials into a finished Amazon-style listing visual system. The process is deliberately staged: the main image is the visual source of truth, and the rest of the listing inherits its positioning and style.

## Phase 0: Input Recognition

Classify each provided item before designing:

- Product photo: source for exact product appearance, color, packaging, accessories, proportions, and texture.
- Product link: extract category, title, claims, images, price position, reviews, and buyer objections when accessible.
- Competitor image or link: analyze visual category conventions, repeated layouts, missing angles, claims, trust devices, and opportunities to differentiate.
- Selling-point text: convert into image messages and buyer objections.
- Target country or marketplace: determine language, units, culture, after-sales phrasing, and compliance sensitivity.
- Existing brand materials: preserve brand color, tone, logo rules, and style constraints when legitimate.

If the user provides mixed materials, use all of them. Ask only for missing material that blocks upload-ready output, such as no exact product image when the product's appearance must be preserved.

## Phase 1: Five Main-Image Directions

Always start with the main image unless the user explicitly says a main image is already chosen.

For each of five directions, provide:

- Direction name.
- Best-fit product/category logic.
- Visual style and emotional signal.
- Composition: angle, crop, product scale, shadow, background, prop policy.
- Local-market fit: language/culture/unit considerations if visible text or setting is used.
- Competitor advantage: what this direction does better or differently.
- Compliance risk level.
- Image prompt for generation.
- Negative prompt for defect prevention.
- Upload-readiness note.

If a raster image generator is available and source product imagery is sufficient, generate the five main-image candidates. If exact product imagery is missing, generate only concept visuals or production prompts and explain that final upload-ready images require product photos.

Stop after Phase 1 and ask the user to choose one direction. Do not build the full image set yet unless the user explicitly asks to continue without selection.

## Phase 2: Eight Supporting Images

After the user selects a main-image direction, create eight supporting images. Adapt the slots to the product, but default to:

1. Core benefit image.
2. Problem-solution image.
3. Feature breakdown image.
4. Usage scenario image.
5. Size/specification/compatibility image.
6. Installation or how-to-use image.
7. Comparison or advantage image.
8. Trust, package contents, warranty, or after-sales reassurance image.

Each supporting image must inherit the chosen main-image style: color family, lighting, realism level, product angle logic, background cleanliness, and brand tone. Do not let the supporting images look like unrelated campaigns.

## Phase 3: A+ / Ecommerce Detail Page

Design the page as a scrollable persuasion path. Default modules:

1. Hero banner: product promise and lifestyle context.
2. Buyer pain section: problem, frustration, and why this product matters.
3. Core feature module: 3-5 feature cards.
4. Scenario module: localized usage environment.
5. Detail/spec module: dimensions, materials, compatibility, or package contents.
6. Comparison module: why this product is a better choice.
7. Trust and after-sales module: local-language reassurance, support promise, warranty/return language when provided.
8. FAQ or objection-handling module.

For TikTok Shop, keep the same persuasive structure but simplify scrolling modules for mobile-first clarity.

## Phase 4: Asset Production

Prefer finished assets over pure strategy. Use direct image generation when it can preserve product identity and platform rules. Use prompts/briefs for a better image model or designer when direct generation risks inaccurate products, warped text, or weak realism.

For every generated or proposed asset, record:

- Purpose.
- Target country/language.
- Dimensions or aspect ratio.
- Source image dependency.
- Prompt or editing instruction.
- Negative prompt.
- Review status: upload-ready, needs manual check, or needs source asset.

When saving finished images to disk, use the output root provided by the user. If none is provided, create a dedicated product folder under `finished-assets/` in the current working directory. Prefer a readable folder name such as `<product>-<country>-<platform>-<YYYYMMDD>`, for example `cosmetic-bag-ph-tiktokshop-20260710`. Save only that product's assets inside the folder and name files in order:

- `01-main-image.png`
- `02-capacity.png`
- `03-vanity-neat.png`
- `04-grab-go.png`
- `05-material-detail.png`
- `06-wide-opening.png`
- `07-travel.png`
- `08-category-storage.png`
- `09-after-sales.png`
- `10-detail-page.png`
- `prompts-and-review.md`

## Decision Points

- If no target country is provided, ask for it before writing image copy or after-sales slogans. If the user wants speed, default to US English and mark localization as provisional.
- If no product image is provided, avoid claiming upload-ready product visuals.
- If competitor images are unavailable, create a competitor-analysis placeholder and recommend collecting 3-5 competitor visuals before final production.
