return {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        config = function()
                vim.filetype.add({
                        extension = { metal = "metal" },
                })
                vim.treesitter.language.register("cpp", "metal")
                require("nvim-treesitter").install({ "lua", "cpp", "cmake", "haskell", "python" })
                vim.api.nvim_create_autocmd("FileType", {
                        callback = function()
                                local ok = pcall(vim.treesitter.start)
                                if ok then
                                        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                                end
                        end,
                })
                vim.api.nvim_create_autocmd("FileType", {
                        pattern = "metal",
                        callback = function()
                                vim.treesitter.start(0, "cpp")
                        end,
                })
        end,
}
