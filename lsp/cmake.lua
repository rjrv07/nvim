return {
        cmd = { 'neocmakelsp', 'stdio' },
        filetypes = { 'cmake' },
        root_markers = { 'CMakePresets.json', 'CTestConfig.cmake', '.git', 'build', 'cmake' },
        capabilities = {
                workspace = {
                        didChangeWatchedFiles = {
                                dynamicRegistration = true,
                                relativePatternSupport = true,
                        },
                },
        },
}
