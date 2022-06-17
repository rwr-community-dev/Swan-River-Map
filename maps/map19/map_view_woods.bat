rem blur woods to make it spread
D:\ImageMagick\convert _grey_woods.png -blur 0x20 _map_woods.png
D:\ImageMagick\convert _map_woods.png map_view_woods_lookup.png -clut -negate _map_woods2.png

rem use woods area as mask for woods pattern
D:\ImageMagick\convert map_view_tile_white.png map_view_woods_pattern.png _map_woods2.png -composite _map_composed_woods.png
