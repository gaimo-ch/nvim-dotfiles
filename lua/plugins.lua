local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'shaunsingh/moonlight.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'lambdalisue/fern.vim'
    use 'lambdalisue/fern-renderer-nerdfont.vim'
    use 'lambdalisue/nerdfont.vim'
    use 'neoclide/coc.nvim'
end)