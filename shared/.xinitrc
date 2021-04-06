if [[ -f ~/.config/sxhkd/specific ]]; then
    sxhkd -a space ~/.config/sxhkd/specific&
else
    sxhkd -a space&
fi
exec bspwm
