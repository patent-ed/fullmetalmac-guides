# 03 — SF Symbols in swiftDialog

SF Symbols give Mac admins access to thousands of Apple-designed icons directly inside swiftDialog — no image files needed. This folder demonstrates common symbols for IT workflows, advanced styling with palettes and weights, and macOS 14+ animations.

## Syntax Reference

```
SF=symbol.name[,colour=<value>][,weight=<value>][,palette=<c1,c2,c3>][,bgcolor=<value>][,animation=<value>]
```

## Properties

| Property | Values | Example |
|----------|--------|---------|
| colour/color | Hex (#FF3B30) or named (red, blue, green, etc.) | colour=#007AFF |
| weight | thin, light, regular, medium, heavy, bold | weight=medium |
| palette | Up to 3 colors for multi-layer symbols | palette=white,blue,red |
| bgcolor | Background circle color, or none | bgcolor=none |
| animation | pulse, bounce, appear, variable, variable.reversing (macOS 14+) | animation=pulse |

## Scripts

| Script | Description |
|--------|-------------|
| security-icons.sh | Security and compliance symbols — locks, shields, keys |
| update-icons.sh | Update and software symbols — downloads, syncing, checkmarks |
| device-icons.sh | Device and hardware symbols — laptops, drives, network |
| alert-icons.sh | Alert and status symbols — warnings, errors, info |
| animated-icons.sh | Animation types demo — pulse, bounce, appear, variable |
| palette-and-overlay.sh | Multi-color palettes, backgrounds, overlay icons, weights |

## Links

Full guide section → https://fullmetalmac.com/guides/swiftdialog/#sf-symbols-reference-for-mac-admins

> **Tip:** Browse all symbols in Apple's free SF Symbols app → https://developer.apple.com/sf-symbols/
