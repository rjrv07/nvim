return {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        opts = function()
                require("nvim-treesitter").install {
                        "lua",
                        "cpp",
                        "cmake",
                        "haskell",
                        "python",
                }
        end
}
