local telescope = require 'telescope'

telescope.setup {
  defaults = {
    file_ignore_patterns = {
      '%.png',
      '%.webapp',
      '%.png',
      '%.jpg',
      '.git',
      'node_modules/',
      '.vscode/',
      '.target/'
    }
  }
}
