-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder

  -- AI
  -- { import = "astrocommunity.recipes.ai" },
  -- { import = "astrocommunity.completion.minuet-ai-nvim" },

  -- Devel
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.nginx" },
  { import = "astrocommunity.pack.nix" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },  

  -- Themes
  { import = "astrocommunity.recipes.cache-colorscheme" },
  { import = "astrocommunity.colorscheme.citruszest-nvim" },
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.colorscheme.everblush-nvim" },
  { import = "astrocommunity.colorscheme.poimandres-nvim" },
}
