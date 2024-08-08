local M = {
    'RaafatTurki/hex.nvim',
    config = function ()
        require 'hex'.setup()
        vim.keymap.set('n', '<C-b>', ':HexToggle<CR>', {}) 
    end
}

return { M }
