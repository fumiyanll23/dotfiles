# My Awesome Home Manager Configuration
{ config, pkgs, ... }:

{
  home = {
    username = builtins.getEnv "USER";
    homeDirectory = builtins.getEnv "HOME";
    packages = with pkgs; [
      cachix
      niv
      python3
    ];
    stateVersion = "21.11";
  };

  programs = {
    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };
    git = {
      enable = true;
      userName = "fumiyanll23";
      userEmail = "fumiyanll23.public@gmail.com";
    };
    home-manager = {
      enable = true;
    };
    zsh = {
      autocd = true;
      defaultKeymap = "emacs";
      dotDir = ".config/zsh";
      enable = true;
      enableAutosuggestions = true;
      enableCompletion = true;
      enableSyntaxHighlighting = true;
      envExtra = ''
        if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then
          . ~/.nix-profile/etc/profile.d/nix.sh
        fi
      '';
      initExtra =''
        setopt no_beep
        setopt auto_pushd
        setopt pushd_ignore_dups
        setopt inc_append_history
      '';
      history = {
        extended = true;
        ignoreDups = true;
        save = 1000000;
        share = true;
        size = 1000000;
      };
      oh-my-zsh = {
        enable = true;
        plugins = [
          "extract"
          "fzf"
          "git"
          "web-search"
        ];
      };
      shellAliases =
        {
          h = "history";
          hs = "history | grep";
          hsi = "history | grep -i";
          ll = "ls -AlF";
          la = "ls -A";
          l  = "ls -CF";
          vi = "nvim";
          view = "nvim -R";
          vim = "nvim";
          emacs = "nvim";
          relogin = "exec $SHELL -l";
          cat = "bat";
        };
      zplug = {
        enable = true;
        plugins = [
          { name = "romkatv/powerlevel10k"; tags = [ as:theme depth:1 ]; }
        ];
      };
    };
  };
}
