-- In-buffer markdown rendering. Toggle with <leader>mt or :RenderMarkdown toggle.
-- Rendering drops back to raw text in insert mode, so editing always shows the source.
local nerd = vim.g.have_nerd_font

return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  ft = { 'markdown' },
  keys = {
    { '<leader>mt', '<cmd>RenderMarkdown toggle<cr>', desc = '[M]arkdown render [T]oggle' },
  },
  opts = {
    -- Without a Nerd Font, swap the glyph defaults for plain unicode so nothing renders as tofu.
    heading = nerd and {} or { icons = { '# ', '## ', '### ', '#### ', '##### ', '###### ' } },
    checkbox = nerd and {} or { unchecked = { icon = '[ ] ' }, checked = { icon = '[x] ' } },
    code = nerd and {} or { language_icon = false },
    -- No LaTeX toolchain installed; skip it so :checkhealth stays clean.
    latex = { enabled = false },
  },
}
