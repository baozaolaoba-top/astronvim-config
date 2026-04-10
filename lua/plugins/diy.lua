---@type LazySpec
return {
  {
    "voldikss/vim-translator",
    config = function()
      vim.g.translator_target_lang = "zh"
      vim.g.translator_default_engines = { "youdao", "haici" }
    end,
  },

  {
    "name5566/vim-bookmark",
    config = function() vim.g.vbookmark_bookmarkSaveFile = "~/.vimbookmark" end,
  },
}
