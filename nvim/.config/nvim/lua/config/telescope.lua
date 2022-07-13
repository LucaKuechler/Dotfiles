require("telescope").setup({
    pickers = {
        live_grep = {
            additional_args = function(opts)
                return {"--hidden", "--glob", "!.git"}
            end
        },
    },
})
