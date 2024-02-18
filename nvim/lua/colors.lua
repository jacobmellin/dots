function SetColorScheme(color)
    color = color or "catppuccin"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetColorScheme("catppuccin")
