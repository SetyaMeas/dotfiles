return {
    "mbbill/undotree",
    config = function()
        vim.keymap.set("n", "<Space><F5>", vim.cmd.UndotreeToggle)
    end
}
