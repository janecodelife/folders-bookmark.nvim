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

---

## 💝 Support the Project

If this plugin saves you time and improves your daily development workflow, consider buying me a coffee or supporting my open-source work! 

You can tip or donate directly to my **TRON (TRX / USDT-TRC20)** crypto wallet address:

`ضع_هنا_عنوان_محفظة_الترون_الخاصة_بcurrent_user`

> *Every contribution helps keep the maintenance alive and fuels the development of future Neovim utilities! Thank you for your support!* 🙏

