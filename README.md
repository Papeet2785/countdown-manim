# Countdown Manim Animation

A small [Manim](https://www.manim.community/) animation project based on **Bog's countdown animation**, recreated and customized in Python.

The animation starts with two separated blocks, brings them together into a five-digit countdown-style display, highlights each digit, and then transitions into a final title card.

## Preview

The animation features:

- Two initial blue blocks moving toward the center
- A five-block countdown display
- The number `28980`
- Individual digit highlighting
- A zoom-out transition
- A large white transition block
- A final **"Made by Papeet2785"** title card

## Requirements

- Python 3
- Manim Community Edition

This project is intended to be run inside the project's Nix development environment.

## Running the Animation

Enter the development shell:

```bash
nix develop countdown-manim
```
To render the video:

```bash
manim -pqm main.py countdown
```
