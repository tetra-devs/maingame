[gd_scene load_steps=4 format=2]

[ext_resource path="res://resources/tilesets/library_tables.tres" type="TileSet" id=1]
[ext_resource path="res://Player_s.tscn" type="PackedScene" id=2]
[ext_resource path="res://Library/chair.tscn" type="PackedScene" id=3]



[node name="World" type="Node2D"]

[node name="Tables" type="TileMap" parent="."]
mode = 1
tile_set = ExtResource( 1 )
cell_size = Vector2( 256, 128 )
format = 1
tile_data = PoolIntArray( -65536, 4, 0, -65535, 4, 0, -65534, 4, 0, 0, 4, 0, 1, 4, 0, 2, 4, 0, 65536, 4, 0, 65537, 4, 0, 65538, 4, 0, 131072, 4, 0, 131073, 4, 0, 131074, 4, 0, 196608, 4, 0, 196609, 4, 0, 196610, 4, 0 )

[node name="Player" parent="." instance=ExtResource( 2 )]
position = Vector2( 712.848, 290.384 )

[node name="TileMap" parent="." instance=ExtResource( 3 )]
position = Vector2( 642.058, 307.745 )

[node name="StaticBody2D" parent="." instance=ExtResource( 3 )]
position = Vector2( 509.954, 402.898 )
