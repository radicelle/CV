# Resume (Typst version)

This directory contains the Typst version of the resume.

## Prerequisites

- [Typst](https://github.com/typst/typst) installed on your system.

### Installation

**Windows:**
```powershell
winget install --id Typst.Typst
```

**macOS:**
```bash
brew install typst
```

**Linux:**
```bash
# Arch Linux
sudo pacman -S typst

# Using Snap
sudo snap install typst
```

## Compilation

To compile the resume into a PDF, run the following command in this directory:

```bash
typst compile resume.typ
```

To watch for changes and recompile automatically:

```bash
typst watch resume.typ
```

## Structure

- `resume.typ`: The main Typst source file.
- `assets/`: Contains images and other assets.
- `icons/`: Contains SVG icons used in the resume.
