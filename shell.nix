{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.hugo
    pkgs.git
    pkgs.uv
  ];

  shellHook = ''
    uv tool install git+https://github.com/crocidb/obsidian-to-blog.git
  '';
}
