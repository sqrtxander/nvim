{
  description = "Neovim config of sqrtxander";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    wrappers.url = "github:nix-community/nix-wrapper-modules";
  };

  outputs = {nixpkgs, ...} @ inputs: let
    supportedSystems = ["x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin"];
    forAllSystems = f:
      nixpkgs.lib.genAttrs supportedSystems (
        system:
          f (
            import nixpkgs {inherit system;}
          )
      );
  in {
    packages = forAllSystems (
      pkgs: let
        pkgList = with pkgs; [
          # c
          clangd

          # bash
          bash-language-server
          beautysh

          # lua
          emmylua-ls
          stylua

          # nix
          nixd
          alejandra

          # python
          ty
          ruff

          # typescript
          typescript-language-server
          eslint_d

          # typst
          tinymist
          typstyle

          # other
          prettierd

          # tools
          cargo
          gcc
          gcc
          gnumake
          ripgrep
          tree-sitter
        ];
      in {
        default = inputs.wrappers.wrappers.neovim.wrap {
          inherit pkgs;
          env.CONFIG_ROOT = ./.;
          runtimePkgs = pkgList;
          settings.config_directory = ./.;
        };
      }
    );
  };
}
