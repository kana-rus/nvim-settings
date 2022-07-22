local packer
local function init()
    if not packer then
        packer = require('packer')
        packer.init({ disable_commands = true })
    end

    local use = packer.use
    packer.reset()

    use { 'wbthomason/packer.nvim'}--, opt = true}
    use { 'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true} }
    use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}} }
    use { 'folke/tokyonight.nvim' }--, opt = true }
    -- use { "EdenEast/nightfox.nvim" }
    -- use { 'rmehri01/onenord.nvim' }
    use { 'neovim/nvim-lspconfig' }
    use { 'williamboman/nvim-lsp-installer' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-vsnip' }
    use { 'hrsh7th/vim-vsnip' }
    use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end


local plugins = setmetatable({}, {
  __index = function(_, key)
    init()
    return packer[key]
  end,
})
return plugins
