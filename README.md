# blockparty

A browser-based ASCII and block character art editor. No dependencies, no install — just open and draw.

**[Launch blockparty](https://sydney-informatics-hub.github.io/blockparty/)**

---

## What it is

Blockparty is a lightweight canvas for making art with Unicode block elements, box-drawing characters, braille patterns, and geometric symbols. Draw freehand, build terminal UI mockups, make pixel-style illustrations, or just mess around with characters most keyboards never touch.

Rendering is done on an HTML `<canvas>` for pixel-perfect, gap-free output — full block characters render as true filled rectangles, while partial blocks and other glyphs render as clipped text so their shapes still show through correctly.

---

## Features

- **Four character sets** — block elements, box drawing, braille/noise, geometric shapes
- **Expanded colour palette** — 90 colours across 10 rows, plus a custom hex picker
- **Canvas backgrounds** — dark, tinted, and light options
- **Adjustable canvas size** — up to 80 columns × 40 rows
- **Adjustable cell size** — 8–32px per character
- **Independent gap controls** — separate horizontal and vertical spacing sliders, 0–8px each, for anything from flush pixel art to LED dot-matrix or striped effects
- **Drawing tools** — freehand draw, erase mode, border fill, flood fill, invert, flip H/V
- **Grid overlay** — toggle cell guides on and off
- **Plain text output** — copy for pasting anywhere (Obsidian, docs, code comments)
- **ANSI colour output** — copy or download with embedded 24-bit ANSI escape codes, ready to print straight into a terminal from Python, Node, bash, or any script
- **Download** — export as `.txt` (plain) or `.ans` (colour)

---

## Usage

Open the app, pick a character from the panels on the left, pick a colour, and draw on the canvas. Hold and drag to paint multiple cells.

| Control | Action |
|---|---|
| Click / drag | Draw |
| Erase toggle | Switch to eraser |
| Cell size slider | Resize each character cell (8–32px) |
| Gap H / Gap V sliders | Add horizontal/vertical spacing independently |
| Border | Draw selected char around the entire edge |
| Flood fill | Fill connected empty space from top-left |
| Invert | Swap filled and empty cells |
| Flip H / V | Mirror the canvas |
| Copy | Copy plain text to clipboard |
| Copy ANSI | Copy with colour escape codes for terminal rendering |
| Download .txt | Save plain text |
| Download .ans | Save with ANSI colour codes |

---

## Using ANSI output in scripts

The ANSI export embeds 24-bit colour codes (`\x1b[38;2;R;G;Bm`) directly in the text, so it renders in full colour wherever it's printed to a terminal:

```python
with open("blockparty.ans") as f:
    print(f.read())
```

```bash
cat blockparty.ans
```

Colour codes are only emitted when the colour changes between characters, so output stays compact. Each line resets with `\x1b[0m` to avoid bleeding into anything printed afterward.

---

## Character sets used

- [Unicode Block Elements](https://www.unicode.org/charts/PDF/U2580.pdf) — `U+2580–U+259F`
- [Box Drawing](https://www.unicode.org/charts/PDF/U2500.pdf) — `U+2500–U+257F`
- [Braille Patterns](https://www.unicode.org/charts/PDF/U2800.pdf) — `U+2800–U+28FF`
- Geometric shapes and miscellaneous symbols
