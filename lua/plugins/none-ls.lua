-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    -- opts variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics

    -- Only insert new sources, do not replace the existing ones
    -- (If you wish to replace, use `opts.sources = {}` instead of the `list_insert_unique` function)
    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      -- Set a formatter
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
      -- null_ls.builtins.formatting.prettierd,
      null_ls.builtins.formatting.puppet_lint,
      null_ls.builtins.formatting.nixfmt,
      null_ls.builtins.formatting.nixpkgs_fmt,
      null_ls.builtins.formatting.nix_flake_fmt,
      null_ls.builtins.formatting.shfmt,
      null_ls.builtins.formatting.black,
    })
  end,
}
