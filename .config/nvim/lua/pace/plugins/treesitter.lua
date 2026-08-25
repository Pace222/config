return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  dependencies = {
    { "windwp/nvim-ts-autotag", opts = {} },
  },
  config = function()
    -- language parsers to install (replaces the old ensure_installed)
    local languages = {
      "bash",
      "c",
      "css",
      "dockerfile",
      "gitignore",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "rust",
      "vim",
      "vimdoc",
      "yaml",
    }
    require("nvim-treesitter").install(languages)

    -- enable highlighting and indentation per buffer
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("pace_treesitter", { clear = true }),
      callback = function(args)
        if pcall(vim.treesitter.start, args.buf) then
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
