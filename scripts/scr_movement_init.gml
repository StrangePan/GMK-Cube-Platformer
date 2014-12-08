// Replace GameMaker's movement stuff with our own
self.x_velocity = cos(direction) * speed;
self.y_velocity = sin(direction) * speed;
self.x_accelleration = cos(gravity_direction) * gravity;
self.y_accelleration = sin(gravity_direction) * gravity;
self.x_friction = friction;
self.y_friction = friction;

speed = 0;
direction = 0;
gravity = 0;
friction = 0;

y = y - 1;

