if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Minuet-AI autocompletion configuration

---@type LazySpec
return {
    "milanglacier/minuet-ai.nvim",
    opts = {
        virtualtext = {
            auto_trigger_ft = { "sh", "lua", "python", "yaml", "json", "nix" },
            keymap = {
                -- accept whole completion
                accept = '<A-A>',
                -- accept one line
                accept_line = '<A-a>',
                -- accept n lines (prompts for number)
                -- e.g. "A-z 2 CR" will accept 2 lines
                accept_n_lines = '<A-z>',
                -- Cycle to prev completion item, or manually invoke completion
                prev = '<A-[>',
                -- Cycle to next completion item, or manually invoke completion
                next = '<A-]>',
                dismiss = '<A-e>',
            },
        },
    },
    specs = {
        config = function()
            require('minuet').setup {
                -- Your configuration options here
                provider = 'openai_fim_compatible',
                n_completions = 1, -- recommend for local model for resource saving
                -- I recommend beginning with a small context window size and incrementally
                -- expanding it, depending on your local computing power. A context window
                -- of 512, serves as an good starting point to estimate your computing
                -- power. Once you have a reliable estimate of your local computing power,
                -- you should adjust the context window to a larger value.
                context_window = 512,
                provider_options = {
                    openai_fim_compatible = {
                        -- For Windows users, TERM may not be present in environment variables.
                        -- Consider using APPDATA instead.
                        api_key = 'TERM',
                        name = 'Ollama',
                        end_point = 'https://ollama.haumea.es/v1/completions',
                        model = 'qwen2.5-coder:latest',
                        optional = {
                            max_tokens = 56,
                            top_p = 0.9,
                        },
                    },
                },
            },
    },
}
