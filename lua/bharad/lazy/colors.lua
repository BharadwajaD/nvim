function ColorIt(color)
    vim.o.background = "dark",
    vim.cmd("colorscheme ".. color)
end


return{

    {
        "Mofiqul/vscode.nvim",
        config = function()
            transparent = true
            ColorIt("vscode")
        end
    },
}
