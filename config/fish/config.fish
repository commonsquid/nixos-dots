if status is-interactive
    set fish_greeting
    starship init fish | source
    fastfetch
end
set -gx QT_QPA_PLATFORM xcb
set -gx QT_QPA_PLATFORMTHEME gtk3
alias nrs="sudo nixos-rebuild switch --flake ~/nixos-dotfiles#nixos"
