-- Packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require "install"
require "options"
require "theme"

require "plugins.comment"
require "plugins.bufferline"
require "plugins.lspconfig"
require "plugins.nvim-compe"

-- require "plugins.nvim-tree"
-- require "plugins.neoscroll"
-- require "plugins.lualine"

require "mappings"
