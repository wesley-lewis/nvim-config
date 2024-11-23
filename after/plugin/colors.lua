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
