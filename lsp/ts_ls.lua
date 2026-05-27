return {
    cmd = { 'typescript-language-server', '--stdio' },
    filetypes = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' },
    root_markers = {
        'tsconfig.json',
        'jsconfig.json',
        'package.json',
        '.git',
    },
    init_options = {
        hostInfo = "neovim",
    },
    settings = {
        javascript = {
            implicitProjectConfiguration = {
                checkJs = true,
                target = "ES2022",
            },
        },
        typescript = {
            implicitProjectConfiguration = {
                target = "ES2022",
            },
        },
    },
}
