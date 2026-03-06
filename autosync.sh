#!/bin/bash
cd ~/Desktop/LaTeX/Algoritmi
fswatch -o main.tex Immagini/ | while read change; do
  git add main.tex Immagini/
  git commit -m "Auto-sync $(date '+%Y-%m-%d %H:%M')"
  git push origin main
done

