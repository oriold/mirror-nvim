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

      -- Code Actions
      -- -----------

      -- Nix - https://github.com/oppiliappan/statix
      null_ls.builtins.code_actions.statix,

      -- Formatting
      -- -----------
      
      -- Nix
      null_ls.builtins.formatting.nixfmt,
      
      -- Lua https://github.com/johnnymorganz/stylua
      null_ls.builtins.formatting.stylua,

      -- Shellscript
      null_ls.builtins.formatting.shfmt,
      
      -- Prettier https://prettier.io
      -- "javascript", "javascriptreact", "typescript", "typescriptreact", 
      -- "vue", "css", "scss", "less", "html", "json", "jsonc", "yaml", 
      -- "markdown", "markdown.mdx", "graphql", "handlebars", "svelte", 
      -- "astro", "htmlangular"
      -- null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.prettierd,

      -- Puppet
      null_ls.builtins.formatting.puppet_lint,

      -- Python
      null_ls.builtins.formatting.black,

      -- Diagnostics
      -- -----------
      
      -- Dockerfiles https://hackage.haskell.org/package/hadolint
      -- https://github.com/aquasecurity/trivy
      null_ls.builtins.diagnostics.hadolint,
      null_ls.builtins.diagnostics.trivy,

      -- Lua https://github.com/kampfkarren/selene
      null_ls.builtins.diagnostics.selene,

      -- Nix
      null_ls.builtins.diagnostics.statix,
      null_ls.builtins.diagnostics.deadnix,

      -- Puppet
      null_ls.builtins.diagnostics.puppet_lint,

      -- YAML https://github.com/adrienverge/yamllint
      null_ls.builtins.diagnostics.yamllint,

      -- Zsh
      null_ls.builtins.diagnostics.zsh,

      -- Text, markdown https://github.com/textlint/textlint
      null_ls.builtins.diagnostics.textlint,

      -- Hover
      -- -----

      -- Show current value of the environment variable
      null_ls.builtins.hover.printenv,
    })
  end,
}
