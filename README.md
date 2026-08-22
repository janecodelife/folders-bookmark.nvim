# folders-bookmark.nvim 🔖

[![Follow on X](https://img.shields.io/badge/Follow-@janecodelife-000000?style=for-the-badge&logo=x)](https://x.com/janecodelife)
[![Subscribe on YouTube](https://img.shields.io/badge/Subscribe-@JaneCodeLife-FF0000?style=for-the-badge&logo=youtube)](https://www.youtube.com/@JaneCodeLife)

A lightweight, blazing-fast, and highly customizable.
Manage Workspace Project Folders With Keymaps Shortcuts (Support All Kinds Of Projects).

---

## 📦 Requirements

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

## Video 📺

<p align="center">
  <img src="assets/folders-bookmark.gif" alt="folders-bookmark-video" width="100%">
</p>

---

## 💝 Support the Project

> *This plugin is built entirely on developer insights gathered over **years of building real-world software** to catch common pain points, combined with **months of dedicated building and rigorous testing** to ensure it operates flawlessly.*

If this utility boosts your everyday speed and eliminates annoying file search clutter, please consider buying me a coffee or supporting my continuous maintenance!

You can tip or donate directly to my **TRON (TRX / USDT-TRC20)** crypto wallet address:
## ☕☕☕☕ Support Me By Coffee Via USDT ☕☕☕☕

- **Network:** `TRX Tron (TRC20)`
- **Address:** `TAFFjBP39Z86weL5dDU1A2251VrgPprDUj`

> *Every bit of support fuels the expansion of this ecosystem and helps me write cleaner tools for all of us. Thank you for standing behind independent developers!* 🙏

---

## 🤝 Let's Build Together (Contact Me)

I will be there i am answer to all messages

- **X (Twitter)**: [https://x.com/janecodelife](https://x.com/janecodelife)
- **YouTube**: [https://www.youtube.com/@JaneCodeLife](https://www.youtube.com/@JaneCodeLife) 

---

## 🔗 My Other Plugins

Check out my other open-source tools to supercharge your Neovim environment:
- **[livewire-secure-properties](https://github.com/janecodelife/livewire-secure-properties)** - Secure livewire app properties by default and void headache.
- **[todo-tracker.nvim](https://github.com/janecodelife/todo-tracker.nvim)** - Assign and list app todos in a blink
- **[folders-bookmark.nvim](https://github.com/janecodelife/folders-bookmark.nvim)** - Bookmark folders and accessing them by keymap in a blink
---


## Upcoming 🚀 (Stay Tuned!)

### The Ultimate Neovim Config for Modern Web & Laravel Devs ⚡

I am currently cooking a comprehensive guide and boilerplate configuration on **How to turn Neovim into a (Powerful) IDE** explicitly optimized for:

- **Backend & Frameworks**: PHP (Intelephense) & Full Laravel & Livewire Integration (With Preformance)
- **Frontend & Tooling**: HTML, CSS, JavaScript, TypeScript, and Livewire SFCs
- **Speed**: Blazing fast autocompletion, lightning-speed code navigation, and fuzzy finding.
