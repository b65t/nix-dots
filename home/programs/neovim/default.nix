{ pkgs, lib, ... }:

{

# thanks to https://github.com/nomisreual/nixdots/blob/main/home/nvim/nvim.nix

  programs.neovim = 
    let
      toLua = str: "lua << EOF\n${str}\nEOF\n";
      toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
    in
  {
    enable = true;
    defaultEditor = true;
       extraPackages = with pkgs; [
        ripgrep
        wl-clipboard
        fzf
        # Formatters
        nixpkgs-fmt
        stylua
        prettierd
        gofumpt
        rustfmt
        # LSPs
        rust-analyzer
        cargo # rust-analyzer needs it
        rustc # rust-analyzer needs it
        lua-language-server
        ruff
        python312Packages.python-lsp-server
        nil
      ];
      withRuby = true;
    extraLuaConfig = ''
       ${builtins.readFile ./options.lua}
      '';
   plugins = with pkgs.vimPlugins; [
        {
          plugin = alpha-nvim;
          config = toLuaFile ./plugins/alpha.lua;
        }
	{
          plugin = lualine-nvim;
          config = toLuaFile ./plugins/lualine.lua;
        }
	{
          plugin = noice-nvim;
          config = toLuaFile ./plugins/noice.lua;
        }
	{
          plugin = lazydev-nvim;
          config = toLuaFile ./plugins/lazydev.lua;
        }
        {
          plugin = neo-tree-nvim;
          config = toLuaFile ./plugins/neo-tree.lua;
        }
	{
	  plugin = (nvim-treesitter.withPlugins (p: [
            p.tree-sitter-nix
            p.tree-sitter-vim
            p.tree-sitter-bash
            p.tree-sitter-lua
            p.tree-sitter-python
            p.tree-sitter-json
	    p.tree-sitter-css
	    p.tree-sitter-c
          ]));
          config = toLuaFile ./plugins/treesitter.lua;
        }
    ];
  };

}
