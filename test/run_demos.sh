#!/usr/bin/env bash
# Runs the same Blockparty .ans file through three different languages
# to demonstrate that the ANSI export is language-agnostic.

echo "── Python ──────────────────────────"
python3 demo.py
echo ""
echo "── Bash ────────────────────────────"
./demo.sh
echo ""
