local M = {}

-- الإعدادات الافتراضية
M.config = {
	bookmarks = {},
}

-- دالة داخلية عامة لبناء واجهة لـ Telescope لأي Bookmark
local function launch_bookmark_picker(title, folder_path, extension_pattern)
	local has_telescope, pickers = pcall(require, "telescope.pickers")
	if not has_telescope then
		vim.notify("Telescope.nvim is required for folders-bookmark.nvim", vim.log.levels.ERROR)
		return
	end

	local finders = require("telescope.finders")
	local conf = require("telescope.config").values
	local actions = require("telescope.actions")
	local action_state = require("telescope.actions.state")
	local entry_display = require("telescope.pickers.entry_display")

	-- التحقق من وجود إضافة الأيقونات لجمالية العرض
	local has_devicons, devicons = pcall(require, "nvim-web-devicons")

	local cwd = vim.fn.getcwd()
	local full_target_dir = cwd .. folder_path

	-- التحقق من وجود المجلد المرجعي في المشروع الحالي
	if vim.fn.isdirectory(full_target_dir) == 0 then
		vim.notify("Bookmarked directory not found in this project: " .. folder_path, vim.log.levels.WARN)
		return
	end

	-- بناء أمر البحث بناءً على الفلتر المختار
	local ext_flag = ""
	if extension_pattern then
		ext_flag = " -name '" .. extension_pattern .. "'"
	end
	local find_cmd = "find " .. full_target_dir .. " -type f" .. ext_flag

	local handle = io.popen(find_cmd)
	if not handle then
		return
	end
	local result = handle:read("*a")
	handle:close()

	local files = {}
	for file in string.gmatch(result, "[^\r\n]+") do
		table.insert(files, file)
	end

	-- تهيئة أعمدة واجهة التصفح
	local displayer = entry_display.create({
		separator = "  ",
		items = {
			{ width = 2 }, -- مساحة أيقونة الملف
			{ width = 30 }, -- اسم الملف المنسق بنقاط
			{ remaining = true }, -- مسار الملف الرمادي
		},
	})

	local make_display = function(entry)
		return displayer({
			{ entry.icon, entry.icon_hl },
			{ entry.clean_name, "TelescopeResultsIdentifier" },
			{ entry.value, "TelescopeResultsComment" },
		})
	end

	pickers
		.new({}, {
			prompt_title = "🔖 Bookmark: " .. title,
			finder = finders.new_table({
				results = files,
				entry_maker = function(absolute_file_path)
					-- تنظيف المسار لجعله منسقاً
					local safe_folder = full_target_dir:gsub("([^%w])", "%%%1")
					local clean_name = absolute_file_path:gsub(safe_folder .. "/", "")
					clean_name = clean_name:gsub("/", ".")

					local safe_cwd = cwd:gsub("([^%w])", "%%%1")
					local relative_to_project = absolute_file_path:gsub(safe_cwd .. "/", "")

					-- جلب أيقونة الملف ديناميكياً بناءً على امتداده
					local icon = "  "
					local icon_hl = "DevIconDefault"
					if has_devicons then
						local filename = vim.fn.fnamemodify(absolute_file_path, ":t")
						local ext = vim.fn.fnamemodify(absolute_file_path, ":e")
						local i, hl = devicons.get_icon(filename, ext, { default = true })
						if i then
							icon = i
							icon_hl = hl
						end
					end

					return {
						value = relative_to_project,
						display = make_display,
						clean_name = clean_name,
						icon = icon,
						icon_hl = icon_hl,
						ordinal = clean_name,
					}
				end,
			}),
			previewer = conf.file_previewer({}),
			sorter = conf.generic_sorter({}),
			attach_mappings = function(prompt_bufnr, map)
				actions.select_default:replace(function()
					actions.close(prompt_bufnr)
					local selection = action_state.get_selected_entry()
					if selection then
						vim.cmd("edit " .. selection.value)
					end
				end)
				return true
			end,
		})
		:find()
end

-- دالة التفعيل وإنشاء الـ Keymaps ديناميكياً
M.setup = function(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})

	for _, bookmark in ipairs(M.config.bookmarks) do
		if bookmark.keymap and bookmark.path and bookmark.name then
			vim.keymap.set("n", bookmark.keymap, function()
				launch_bookmark_picker(bookmark.name, bookmark.path, bookmark.pattern)
			end, { desc = "Folders Bookmark: " .. bookmark.name })
		end
	end
end

return M
