local black = {formatCommand = "black --quiet -", formatStdin = true}

require"lspconfig".efm.setup {
    cmd = {'efm-langserver', '-logfile', '/tmp/efm.log', '-loglevel', '5'},
    filetypes = {"lua", "python"},
    init_options = {documentFormatting = true},
    settings = {
        rootMarkers = {".git/"},
        log_file = '~/efm.log',
        languages = {
            lua = {{formatCommand = "lua-format -i", formatStdin = true}},
            python = {black}
        }
    }
}
