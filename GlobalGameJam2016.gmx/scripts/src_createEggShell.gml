var offsetX = argument0;
var offsetY = argument1;
var shell = instance_create(x + offsetX, y + offsetY, obj_shell);
with (shell) {
    direction = random_range(0, 1) * 360;
    physics_apply_impulse(x + random_range(-5, 5), y + random_range(-5, 5), (x - other.x) * 10, (y - other.y) * 10);
}
