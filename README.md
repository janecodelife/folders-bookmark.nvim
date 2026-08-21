# folders-bookmark.nvim 🔖

A lightweight, blazing-fast, and highly customizable Neovim plugin built on top of Telescope. It allows you to set scoped "bookmarks" for your favorite or frequently accessed directories in any project, ensuring fast navigation with clean Laravel-style dot notation and native file icons.

---

## 🚀 Features

- **Dynamic Bookmarking**: Create scoped shortcuts for specific folders depending on your workflow (e.g., Pages, Models, Controllers, Components).
- **Dot-Notation Names**: Automatically converts deep nested subdirectory paths into readable, clean formats (e.g., `admin/posts/create.blade.php` becomes `admin.posts.create`).
- **File Icons**: Integrates seamlessly with `nvim-web-devicons` to add beautiful visual anchors to your lists.
- **Built-in Preview**: Instantly preview file contents within Telescope before opening them.
- **Zero-Bloat & Configurable**: Generates individual telescope pickers and keymaps dynamically based on your setup.

---

## 📦 Requirements

- Neovim >= 0.9.0
- [telescope.nvim](https://github.com)
- [nvim-tree/nvim-web-devicons](https://github.com) *(Optional, for icons)*

---

## 📥 Installation & Configuration

Install it using your favorite package manager. Here is the configuration blueprint using [lazy.nvim](https://github.com):

```lua
return {
    "YOUR_GITHUB_USERNAME/folders-bookmark.nvim",
    dependencies = { 
        "nvim-telescope/telescope.nvim",
        "nvim-tree/nvim-web-devicons" -- Optional but highly recommended
    },
    config = function()
        require("folders-bookmark").setup({
            bookmarks = {
                -- Example 1: Laravel Livewire SFC Pages
                {
                    name = "Livewire Pages",
                    path = "/resources/views/pages",
                    keymap = "<leader>lp",
                    pattern = "*.blade.php",
                },
                -- Example 2: Backend Application Models
                {
                    name = "Models",
                    path = "/app/Models",
                    keymap = "<leader>lm",
                    pattern = "*.php",
                },
                -- Example 3: Deep Controllers Directory
                {
                    name = "Controllers",
                    path = "/app/Http/Controllers",
                    keymap = "<leader>lc",
                },
            }
        })
    end,
}
```

---

## ⌨️ Usage

Simply press your configured keymap (e.g., `<leader>lp` or `<leader>lm`) while working inside any repository root. A Telescope popup window will display only the relevant files from that directory, completely isolated from global bloat!

---

## 🛠️ Upcoming Features (Coming Soon)

We are actively working to make this plugin even more powerful! Here is what's on the roadmap:
- [ ] **Dynamic Global Bookmarks**: Ability to bookmark files/folders on the fly across different projects.
- [ ] **Context-Aware Pickers**: Show/hide bookmarks dynamically based on the current filetype or detected framework.
- [ ] **Fzf-lua Support**: Out-of-the-box integration for users who prefer `fzf-lua` over Telescope.

---

## 🔗 My Other Plugins

Check out my other open-source tools to supercharge your Neovim environment:
- **[livewire4-pages.nvim](https://github.com)** - A highly focused, specialized navigator for Laravel Livewire 4 Single File Components.

---

## 💝 Support the Project

If this plugin saves you time and improves your daily development workflow, consider buying me a coffee or supporting my open-source work! 

You can tip or donate directly to my **TRON (TRX / USDT-TRC20)** crypto wallet address:

`ضع_هنا_عنوان_محفظة_الترون_الخاصة_بcurrent_user`

> *Every contribution helps keep the maintenance alive and fuels the development of future Neovim utilities! Thank you for your support!* 🙏

