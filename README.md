# blockparty

A browser-based ASCII and block character art editor. No dependencies, no install — just open and draw.

**[Launch blockparty](https://sydney-informatics-hub.github.io/blockparty/)**

---

## What it is

Blockparty is a lightweight canvas for making art with Unicode block elements, box-drawing characters, braille patterns, and geometric symbols. Draw freehand, build terminal UI mockups, make pixel-style illustrations, or just mess around with characters most keyboards never touch.

---

## Features

- **Four character sets** — block elements, box drawing, braille/noise, geometric shapes
- **Expanded colour palette** — 90 colours across 10 rows, plus a custom hex picker
- **Canvas backgrounds** — dark, tinted, and light options
- **Adjustable canvas size** — up to 80 columns × 40 rows
- **Drawing tools** — freehand draw, erase mode, border fill, flood fill, invert, flip H/V
- **Grid overlay** — toggle cell guides on and off
- **Text output** — plain text copy for pasting anywhere (Obsidian, terminals, docs)
- **Download** — export your art as a `.txt` file

---

## Usage

Open the app, pick a character from the panels on the left, pick a colour, and draw on the dark canvas. Hold and drag to paint multiple cells.

| Control | Action |
|---|---|
| Click / drag | Draw |
| Erase toggle | Switch to eraser |
| Border | Draw selected char around the entire edge |
| Flood fill | Fill connected empty space from top-left |
| Invert | Swap filled and empty cells |
| Flip H / V | Mirror the canvas |
| Copy | Copy plain text to clipboard |
| Download | Save as `.txt` |

---

## Character sets used

- [Unicode Block Elements](https://www.unicode.org/charts/PDF/U2580.pdf) — `U+2580–U+259F`
- [Box Drawing](https://www.unicode.org/charts/PDF/U2500.pdf) — `U+2500–U+257F`
- [Braille Patterns](https://www.unicode.org/charts/PDF/U2800.pdf) — `U+2800–U+28FF`
- Geometric shapes and miscellaneous symbols

