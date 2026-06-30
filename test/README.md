# blockparty ANSI export — demo scenario

Proves that a single `.ans` file exported from Blockparty renders identically
across different languages and runtimes, since the colour is embedded directly
in the file as standard ANSI escape codes rather than relying on any
Blockparty-specific format.

## Files

- `example.ans`: the exported art (24-bit ANSI colour codes embedded)
- `demo.py`: reads and prints the file in Python
- `demo.sh`: reads and prints the file in Bash
- `demo.js`: reads and prints the file in Node.js
- `run_all.sh`: runs all three back to back for a side-by-side demo

## Run it

```bash
chmod +x run_all.sh demo.sh
./run_all.sh
```

Each section should render the exact same coloured art. The only difference
between scripts is the syntax used to read and print a file — none of them
parse or interpret the ANSI codes themselves; the terminal does that.

## Why this works

Blockparty's ANSI export wraps each coloured run of characters in a
24-bit foreground colour code:

```
\x1b[38;2;R;G;Bm   →  set foreground colour to RGB(R,G,B)
\x1b[0m            →  reset colour
```

These are part of the standard ANSI/VT100 terminal spec, supported by every
modern terminal emulator (Terminal.app, iTerm2, Windows Terminal, GNOME
Terminal, etc.) regardless of which language wrote or read the bytes.
