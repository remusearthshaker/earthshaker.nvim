# Earthshaker.nvim

**A warm, earthy Neovim theme built by Remus Alexander**

Earthshaker is a grounded, moody theme designed for terminal dwellers who prefer dark mode with soul. Inspired by twilight forests, aged parchment, and the quiet before revelation.

---

## 🌿 Features

- Full support for `nvim` UI elements
- Treesitter syntax highlights
- Lualine-compatible statusline
- Minimalist, earthy color palette
- Built with Lua, for modern Neovim setups

---

## 📦 Installation (with lazy.nvim)

```lua
{
  "remusearthshaker/earthshaker.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("themes.earthshaker").setup()
  end,
}
```

---

## 🎨 Color Reference

| Element    | Color     | Hex       |
| ---------- | --------- | --------- |
| Background | charcoal  | `#1c1b1a` |
| Foreground | parchment | `#d8c8b3` |
| Accent     | bronze    | `#e49b5d` |
| Visual BG  | soft gray | `#2e2d2c` |
| Comments   | moss      | `#888878` |
| Strings    | olive     | `#708271` |
| Keywords   | goldleaf  | `#bfa780` |

---

## 🪪 License

This theme is licensed under the [GNU General Public License v3.0](LICENSE). Use it, fork it, modify it. Just remember to respect the spirit of open source.
