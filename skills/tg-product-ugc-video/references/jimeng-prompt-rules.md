# Jimeng Prompt Rules

Use these rules for Jimeng image generation and video generation prompts.

## General Rules

Prompt for realistic UGC, not polished advertising.

Prefer:

- Natural phone camera
- Real home, bathroom, bedroom, kitchen, desk, car, gym, or outdoor scene
- Imperfect but clean lighting
- Realistic facial texture
- Simple movement
- Product visible in hand or near the action

Avoid:

- Luxury commercial studio unless requested
- Over-retouched skin
- Unrealistic hands
- Extra fingers
- Warped product labels
- Fake-looking influencer poses
- Watermarks
- Random text on screen
- Clipping/interpenetration: product passing through fingers, clothing, skin, hair, straps, collars, furniture, or props
- Wearable products sinking into fabric instead of sitting on the surface

## Creator Image Prompt Formula

Use this formula:

```text
[age/country/persona] [creator type], realistic UGC creator, [scene], [outfit],
natural [lighting], shot on smartphone front camera, casual authentic expression,
[product category context], TikTok/Reels native style, not a studio ad,
real skin texture, natural imperfections, vertical 9:16 composition
```

Add a negative prompt:

```text
no watermark, no logo overlay, no distorted hands, no extra fingers, no plastic skin,
no heavy beauty filter, no unreadable text, no warped product label, no commercial studio look,
no clipping, no object passing through body or clothing
```

## Product-in-Hand Image Prompt Formula

Use uploaded product image as product reference when available.

```text
Use [product reference image] as the exact product. A realistic [creator persona]
holds the product naturally in [scene]. Product faces the camera and remains recognizable.
Natural smartphone UGC photo, soft everyday lighting, casual composition,
realistic hand grip, clear physical contact boundaries between fingers and product,
authentic TikTok creator style, vertical 9:16.
```

If the label must stay accurate, add:

```text
keep product shape, color, cap, packaging, and label layout consistent with the reference image
```

For jewelry, brooches, bags, apparel, shoes, clips, pins, and other wearable/contact products, add:

```text
the product sits on top of the fabric/body surface with a plausible contact point,
no clipping, no product sinking into clothing or skin, no fingers passing through product,
clear separation between product edges, hands, hair, and clothing
```

## Lifestyle Scene Prompt Formula

```text
Realistic UGC lifestyle scene for [product category], [target market] setting,
[creator persona] using the product in a normal daily moment, natural light,
phone camera perspective, authentic home environment, product visible and central,
not overly polished, vertical 9:16, no clipping between product, body, clothing, and props.
```

## Video Prompt Formula

Write one prompt per shot.

```text
Reference images:
- Character: [uploaded/generated creator image]
- Product: [uploaded product image]

Video prompt:
Keep the same character and the same product. In a realistic [scene], the character
[simple action]. The product remains visible and consistent with the reference image.
Camera style: handheld smartphone, vertical 9:16, native TikTok/Reels UGC.
Motion: [small natural movement].
Expression: [emotion].
Lighting: [natural lighting].
Duration: [seconds].
Physical interaction: the product stays outside the body/clothing surface with realistic contact and clear separation; no clipping or interpenetration.
No watermark, no distorted hands, no extra fingers, no warped product label, no random text, no object passing through fingers, skin, fabric, hair, or props.
```

## Shot Prompt Discipline

- One prompt equals one shot.
- Keep camera movement simple: slight handheld, push-in, close-up, pan to product, hand demo.
- Do not ask for complex multi-scene transitions in one prompt.
- Put speech in the editing/voiceover section, not inside the video generation prompt, unless the user specifically needs lip sync.
- If using voice/lip sync later, keep the creator facing camera and reduce movement.
- For pinning, clipping, wearing, holding, placing, or applying a product, describe exactly where the product contacts the body/clothing and require it to remain on the visible surface.
- Avoid impossible actions such as a hand moving through hair, fabric, straps, jewelry, bottle caps, bags, or collars.

## Prompt Repair

If a prompt is too vague, repair it by adding:

- Country-specific creator and scene
- Product category details
- Product handling action
- Camera distance
- Lighting
- Negative prompt
- Consistency instruction for character and product
- Anti-clipping instruction for product, hands, body, clothing, hair, and props
