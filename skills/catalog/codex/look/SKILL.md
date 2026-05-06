---
name: look
description: Review screenshots, mockups, rendered UIs, visual regressions, and before/after comparisons. Use when the user asks about visual polish, layout, screenshots, mockups, design-vs-implementation, or what changed visually.
---

# Look

Use this skill when the user cares about how something looks, feels, or visually behaves.

## Core rules

1. Ground the answer in what is actually visible.
2. If an image is attached, inspect it before proposing fixes.
3. If the task is visual and no image is available, ask for one or capture one with available screenshot/browser tooling before guessing.
4. Separate:
   - **visible facts**
   - **interpretation**
   - **implementation hypotheses**
5. Prefer concrete, actionable recommendations over vague taste opinions.

## What to evaluate

For UI and design reviews, look at:

- visual hierarchy
- spacing and alignment
- typography and readability
- contrast and emphasis
- affordances and interaction cues
- consistency across components/states
- density, clutter, and whitespace
- accessibility risks
- overall polish and trustworthiness

## Good response structure

1. **What looks strong**
2. **Top visual issues**
3. **Specific changes to make**
4. **Likely implementation hotspots** (only if helpful)

## Comparison workflow

When given both a design reference and an implementation screenshot, read [references/comparison.md](references/comparison.md).

## Screenshot workflow

- If the current environment supports screenshots, capture the relevant app/page when needed.
- For browser UIs, prefer browser automation or page screenshots when available.
- For desktop/native UIs, prefer a focused window screenshot over a full desktop when possible.
- If you cannot capture an image, ask the user for a screenshot instead of speculating.

## Guardrails

- Do not invent visual details you cannot see.
- Do not reduce visual review to code review alone.
- Keep aesthetic feedback tied to product goals: clarity, speed, confidence, and usability.
