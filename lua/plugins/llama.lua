return {
  "ggml-org/llama.vim",
  config = function()
    -- 获取当前的配置（如果插件还没初始化，可能需要手动定义一个基础表）
    -- 或者直接定义你想要覆盖的部分
    local my_overrides = {
      n_predict = 10240,
      t_max_prompt_ms = 3000,
      t_max_predict_ms = 10000,
      max_line_suffix = 100,
      max_cache_keys = 1000,
      show_info = 2,
      keymap_inst_cancel = "<Esc>",
    }

    -- 使用 deep_extend 确保不破坏原有的默认 endpoint 和 ring buffer 配置
    -- 'force' 表示用你的配置覆盖默认值
    vim.g.llama_config = vim.tbl_deep_extend("force", vim.g.llama_config or {}, my_overrides)
  end,
}
