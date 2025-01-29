require("codecompanion").setup({
    strategies = {
        chat = {
            adapter = "ollama"
        }
    },
    opts = {
        log_level = "DEBUG"
    }
})
