---
name: markdown-tables
description: Terminal-friendly table rendering — auto-convert wide markdown tables into stacked label-value cards for narrow panes.
---

## Problem

Markdown pipe tables with many columns render terribly in terminal/TUI panes.
Cells wrap mid-word, borders break, content is unreadable.

## Rule

When presenting tabular data in terminal output:

| Columns | Render as |
|---|---|
| ≤4 | Normal markdown pipe table |
| >4 | Stacked card format (see below) |

## Stacked Card Format

Convert wide tables into this pattern:

```markdown
**Case ID**
Label1 · Value1
Label2 · Value2
Label3 · Value3

**Next Case ID**
Label1 · Value1
...
```

Rules:
- First column becomes the **bold title**
- Remaining columns become `Label · Value` lines
- Skip Unknown / — / n/a / empty values to reduce noise
- Shorten verbose headers: "Next operator action" → "Next", "Likely root cause" → "Root cause"
- One blank line between cards

## Example

**Before** (8 columns, unreadable):
```
| Case | PSI Org ID | Dynamics Org ID | Match? | Tier | Problem | Root cause | Next action |
|---|---|---|---|---|---|---|---|
| SALES01 | C0D121E6@AdobeOrg | Unknown | Unknown | Community | Webhook | Product defect | Wait |
```

**After** (stacked cards):
```
**SALES01**
PSI org · C0D121E6@AdobeOrg
Tier · Community
Problem · Webhook
Root cause · Product defect
Next · Wait
```

## Auto-Transform in Code

When building a TUI/streaming markdown renderer, add a preprocessor that
detects tables with >4 columns and converts them before passing to the
markdown renderer. Reference implementation:

```typescript
const MAX_TABLE_COLS = 4;
const UNKNOWNISH_RE = /^(unknown|—|n\/a|)$/i;

function preprocessMarkdownTables(content: string): string {
  const lines = content.split("\n");
  const output: string[] = [];
  let i = 0;

  while (i < lines.length) {
    const table = parseTable(lines, i);
    if (table && table.headerCells.length > MAX_TABLE_COLS) {
      output.push(tableToCards(table));
      i = table.endLine + 1;
    } else {
      output.push(lines[i]!);
      i += 1;
    }
  }

  return output.join("\n");
}
```

Where `tableToCards` iterates rows, uses the first column as bold title,
and emits `Label · Value` lines for each non-unknown value.
