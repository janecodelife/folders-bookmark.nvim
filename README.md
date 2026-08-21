# folders-bookmark.nvim 🔖

[![Follow on X](https://img.shields.io/badge/Follow-@janecodelife-000000?style=for-the-badge&logo=x)](https://x.com/janecodelife)
[![Subscribe on YouTube](https://img.shields.io/badge/Subscribe-@JaneCodeLife-FF0000?style=for-the-badge&logo=youtube)](https://www.youtube.com/@JaneCodeLife)

A lightweight, blazing-fast, and highly customizable. It allows you to set scoped "bookmarks" for your favorite or frequently accessed directories in any project, ensuring fast navigation with clean 
Easy bookmark mutiple folders and easy accessing them in a blink

---

## 📦 Requirements

- Neovim >= 0.9.0
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

---

## 📥 Installation & Configuration

Install it using your favorite package manager. Here is the configuration blueprint using native vim.pack:

```lua
vim.pack.add({
	"https://github.com/nvim-telescope/telescope.nvim", -- required just for search
	"https://github.com/janecodelife/folders-bookmark.nvim",
})
-- save load plugin after install
local status, folders_bookmark = pcall(require, "folders-bookmark")

if status then
    -- configure you pathes and keymaps and pattern if needed
	require("folders-bookmark").setup({
		bookmarks = {
			{
				name = "Livewire Pages",
				path = "/resources/views/pages",
				keymap = "<leader>lp",
				pattern = "*.blade.php",
			},
			{
				name = "Models",
				path = "/app/Models",
				keymap = "<leader>lm",
				pattern = "*.php",
			},
			{
				name = "Controllers",
				path = "/app/Http/Controllers",
				keymap = "<leader>lc",
			},
		},
	})
end

```
---

## 💝 Support the Project

> *This plugin is built entirely on developer insights gathered over **years of building real-world software** to catch common pain points, combined with **months of dedicated building and rigorous testing** to ensure it operates flawlessly.*

If this utility boosts your everyday speed and eliminates annoying file search clutter, please consider buying me a coffee or supporting my continuous maintenance!

You can tip or donate directly to my **TRON (TRX / USDT-TRC20)** crypto wallet address:

```text
TAFFjBP39Z86weL5dDU1A2251VrgPprDUj
```

> *Every bit of support fuels the expansion of this ecosystem and helps me write cleaner tools for all of us. Thank you for standing behind independent developers!* 🙏

---

## 🤝 Let's Build Together (Connect With Me)

I love building open-source tools that optimize development workflows. If you have an idea, want to collaborate on a feature, or just talk code, let's connect:

- **X (Twitter)**: [https://x.com/janecodelife](https://x.com/janecodelife) — Best for quick chats, feature suggestions, and open-source updates.
- **YouTube**: [https://www.youtube.com/@JaneCodeLife](https://www.youtube.com/@JaneCodeLife) — Where I share video tutorials on Neovim configurations and web ecosystem stacks.

---

## 🔗 My Other Plugins

Check out my other open-source tools to supercharge your Neovim environment:
- **[livewire-secure-properties](https://github.com/janecodelife/livewire-secure-properties)** - Secure livewire app properties by default and void headache.
- **[todo-tracker.nvim](https://github.com/janecodelife/todo-tracker.nvim)** - Assign and list app todos in a blink
---


## 🛠️ Upcoming Features (Coming Soon)

We are actively working to make this plugin even more powerful! Here is what's on the roadmap:
- [ ] **Dynamic Global Bookmarks**: Ability to bookmark files/folders on the fly across different projects.
- [ ] **Context-Aware Pickers**: Show/hide bookmarks dynamically based on the current filetype or detected framework.
- [ ] **Fzf-lua Support**: Out-of-the-box integration for users who prefer `fzf-lua` over Telescope.


