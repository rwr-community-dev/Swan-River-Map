rem base water + isolines
D:\ImageMagick\composite -compose Multiply _map_isoline.png _map_water.png _map_composed1.png

rem asphalt
D:\ImageMagick\convert _rwr_alpha_asphalt.png -alpha extract -depth 8 _map_asphalt_mask.png 
D:\ImageMagick\convert _map_composed1.png map_view_tile_asphalt.png _map_asphalt_mask.png -composite _map_composed2.png

rem road
rem D:\ImageMagick\convert _rwr_alpha_rocky_mountain.png -alpha extract -depth 8 _map_rocky_mountain_mask.png 
rem D:\ImageMagick\convert _map_composed2.png map_view_tile_road.png _map_rocky_mountain_mask.png -composite _map_composed3.png

rem objects
D:\ImageMagick\composite -compose DstOver _map_composed2.png _grey_objects.png _map_composed3.png

rem woods
D:\ImageMagick\composite -compose Multiply _map_composed3.png _map_composed_woods.png _map_composed4.png

rem map view decoration
D:\ImageMagick\composite -compose DstOver _map_composed4.png _rwr_map_view_decoration.png _map_composed5.png

rem map view bases
D:\ImageMagick\composite -compose DstOver _map_composed5.png _rwr_map_view_bases.png map.png
