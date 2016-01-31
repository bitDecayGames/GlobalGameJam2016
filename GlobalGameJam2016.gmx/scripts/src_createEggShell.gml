var offsetX = argument0;
var offsetY = argument1;
var shell = instance_create(x + offsetX, y + offsetY, obj_shell);
with (shell) {
    physics_apply_impulse(x, y, (x - other.x) * 10, (y - other.y) * 10);
}
