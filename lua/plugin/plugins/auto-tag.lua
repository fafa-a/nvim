return {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    config = function()
        require("nvim-ts-autotag").setup({
            autotag = {
                enable = true
            },
            filetypes = { "html", "javascript", "javascriptreact", "typescript", "typescriptreact", "svelte", "vue",
                "xml", "xhtml" }
        })
    end
}
