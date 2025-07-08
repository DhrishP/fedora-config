{ config, pkgs, ... }:

{
  home.username = "whycurious";
  home.homeDirectory = "/home/whycurious";

  home.packages = with pkgs; [
    starship
    brave-browser
  ];

  programs.git = {
    enable = true;
    userName = "DhrishP";
    userEmail = "parekhdhrish.pg@gmail.com";
  };

  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
    };
  };

  home.file."config/autostart/gpaste.desktop".source = ./autostart/gpaste.desktop;

  home.stateVersion = "24.05";
}
