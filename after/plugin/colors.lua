-- function Transparent()
-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
-- end
--
-- function Opaque() 
-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "dark" })
-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "dark" })
-- end


local is_transparent = false

function toggle_transparent()
    if not is_transparent then
        vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
        is_transparent = true
    else
        vim.cmd("set background=dark")
        is_transparent = false
    end
end

-- vim.api.nvim_set_keymap('n', '<F1>', ':lua toggle_transparent()<CR>', { noremap = true, silent = true })
