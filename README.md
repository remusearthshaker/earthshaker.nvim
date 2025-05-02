# 🌸 Earthshaker.nvim — Vibrant Pastel Forest Edition

<!--toc:start-->
- [🌸 Earthshaker.nvim — Vibrant Pastel Forest Edition](#🌸-earthshakernvim-vibrant-pastel-forest-edition)
  - [🌿 Features](#🌿-features)
  - [📦 Installation (via `lazy.nvim`)](#📦-installation-via-lazynvim)
  - [🎨 Screenshots](#🎨-screenshots)
  - [⚖️ License](#️-license)
<!--toc:end-->

**A soulful, grounded Neovim theme built by [Remus Alexander](https://github.com/remusearthshaker)**

Earthshaker is a theme born from soil and song — for those who prefer
their dark mode with depth, magic, and a hint of blooming madness.
Inspired by twilight groves, mossy ruins, glowing pollen, and the
soft chaos of a living forest, the *Vibrant Pastel Forest Edition*
brings fresh floral tones into the mix.

---

## 🌿 Features

- 🌘 Rich dark background with warm highlights
- 🌱 **Treesitter** and semantic token support
- 🪵 Integrated with `lualine`, `nvim-tree`, `neo-tree`, and `snacks.nvim`
- 🎨 New vibrant pastel palette: lavender, periwinkle, rose, and pollen!
- ⚡ Fully written in Lua for blazing-fast native theming
- 🌼 Soft blooming accents woven into an earthy base

---

## 📦 Installation (via `lazy.nvim`)

```lua
return {
  "remusearthshaker/earthshaker.nvim",
  lazy = false,
  priority = 1000,
}
```

Then in your LazyVim config:

```lua
return {
  "LazyVim/LazyVim",
  opts = {
    colorscheme = "earthshaker",
  },
}
```

Or simply run within Neovim:

```vim
:colorscheme earthshaker
```

---

## 🎨 Screenshots

| Vue (with Lualine) | Rust (with Treesitter) |
|--------------------|------------------------|
| ![Vue](assets/earthshakercss.png) | ![Rust](assets/earthshakerrust.png) |

---

## ⚖️ License

Licensed under the [MIT](LICENSE).  
Fork it. Evolve it. Let the forest grow 🌲✨

---

*The forest breathes with every keystroke.*

