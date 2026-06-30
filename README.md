# blockparty

A browser-based ASCII and block character art editor. No dependencies, no install — just open and draw.

**[Launch blockparty](https://sydney-informatics-hub.github.io/blockparty/)**

## What it is

Blockparty is a lightweight canvas for making art with Unicode block elements, box-drawing characters, braille patterns, and geometric symbols. Draw freehand, build terminal UI mockups, make pixel-style illustrations, or just mess around with characters most keyboards never touch.

Rendering is done on an HTML `<canvas>` for pixel-perfect, gap-free output.

Cell proportions match a typical monospace terminal (roughly 0.55 width:height), so art drawn here looks consistent whether viewed in the app, exported as SVG, or piped into a real terminal as ANSI text.

> **!!! A note on terminal rendering:** 
    </br>
    Monospace terminal fonts are not perfectly square, cells are typically taller than wide (~0.55 width:height ratio). Blockparty's canvas matches this ratio by default, so shapes that look correct in the app should also look correct when printed as ANSI in a real terminal. 
    </br></br>
    If your terminal's font uses a different ratio, block-heavy art may appear slightly stretched or squished; switching to a standard monospace font (Menlo, Cascadia Code, JetBrains Mono) may resolve this.

---

## Features

- **Four character sets**: block elements, box drawing, braille/noise, geometric shapes
- **Expanded colour palette**: 90 colours across 10 rows, plus a custom hex picker
- **Canvas backgrounds**: dark, tinted, and light options
- **Adjustable canvas size**: up to 80 columns × 40 rows
- **Adjustable cell height**: 8–32px; cell width follows automatically at a fixed terminal-matching aspect ratio
- **Independent gap controls**: separate horizontal and vertical spacing sliders, 0–8px each, for anything from flush pixel art to LED dot-matrix or striped effects
- **Drawing tools**: freehand draw, erase mode, border fill, flood fill, invert, flip H/V
- **Grid overlay**: toggle cell guides on and off
- **Plain text output**: copy for pasting anywhere (Obsidian, docs, code comments)
- **ANSI colour output**: copy or download with embedded 24-bit ANSI escape codes, ready to print straight into a terminal from Python, Node, bash, or any script
- **SVG export**: download a pixel-accurate vector image directly from the canvas, ideal for embedding in READMEs
- **Download**: export as `.txt` (plain), `.ans` (colour), or `.svg` (vector image)

---

## Exporting `.svg` for a README 

The simplest way to put your art in a README is the **download .svg** button — it renders directly from the canvas, with no intermediate format or conversion script needed:

1. Draw your art
2. Click **download .svg**
3. Commit the file to your repo and embed it:
   ```markdown
   ![my art](path/to/file.svg)
   ```

GitHub renders SVGs natively with full colour, unlike plain ANSI text which GitHub strips of colour entirely.

---

## Using ANSI output in scripts

The ANSI export embeds 24-bit colour codes (`\x1b[38;2;R;G;Bm`) directly in the text, so it renders in full colour wherever it's printed to a terminal — Python, Bash, Node, or any language that writes to stdout. Working examples for each are in [`test/`](test/):

```bash
cd test
chmod +x demo.sh run_all.sh
./run_all.sh
```

This runs `demo.py`, `demo.sh`, and `demo.js` back to back, each reading [`test/example.ans`](test/example.ans) and printing it with full colour to confirm the export works identically across languages.

Colour codes are only emitted when the colour changes between characters, so output stays compact. Each line resets with `\x1b[0m` to avoid bleeding into anything printed afterward.

---

## Character sets used

- [Unicode Block Elements](https://www.unicode.org/charts/PDF/U2580.pdf) — `U+2580–U+259F`
- [Box Drawing](https://www.unicode.org/charts/PDF/U2500.pdf) — `U+2500–U+257F`
- [Braille Patterns](https://www.unicode.org/charts/PDF/U2800.pdf) — `U+2800–U+28FF`
- Geometric shapes and miscellaneous symbols