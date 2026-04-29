vim.lsp.enable(vim.tbl_map(function(p)
        return vim.fn.fnamemodify(p, ":t:r")
end, vim.api.nvim_get_runtime_file("lsp/*.lua", true)))

vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('my.lsp', {}),
        callback = function(ev)
                local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
                if client:supports_method('textDocument/completion') then
                        -- Optional: trigger autocompletion on EVERY keypress. May be slow!
                        -- local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
                        -- client.server_capabilities.completionProvider.triggerCharacters = chars
                        vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger = true})
                end
        end,
})
