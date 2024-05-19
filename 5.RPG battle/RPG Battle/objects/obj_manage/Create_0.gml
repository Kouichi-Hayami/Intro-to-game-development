
respawn_status = false;

// Create an array to store enemy instances
enemy_array = [];

for (var i = 0; i < 3; i++) {
    var original = instance_create_layer(100 + i * 150, 100, "Instances", obj_enemy);
    array_push(enemy_array, original);
}