// Script to move an object. Uses x/y positions, x_velocity and y_velocity,
//      and x_accelleration and y_accelleration
var i;
var j;

// X movement
// Add accelleration to velocity
x_velocity += x_accelleration;

// Factor in friction
if (x_friction != 0)
{
    x_friction = abs(x_friction);
    if (x_velocity > x_friction)
    {
        x_velocity -= x_friction;
    }
    else if (x_velocity < -x_friction)
    {
        x_velocity += x_friction;
    }
    else
    {
        x_velocity = 0;
    }
}

// Now to calculate this step's motion
j = 0;
if (x_velocity > 0) j = 1;
if (x_velocity < 0) j = -1;
for (i = 0; i < abs(x_velocity); i++)
{
    if (place_free(x + j, y))
    {
        x += j;
    }
    else
    {
        x_velocity = 0;
        break;
    }
}

// Y movement
// Add accelleration to velocity
y_velocity += y_accelleration

// Factor in friction
if (y_friction != 0)
{
    y_friction = abs(y_friction);
    if (y_velocity > y_friction)
    {
        y_velocity -= y_friction;
    }
    else if (y_velocity < -y_friction)
    {
        y_velocity += y_friction;
    }
    else
    {
        y_velocity = 0;
    }
}

// Now to calculate this step's motion
j = 0;
if (y_velocity > 0) j = 1;
if (y_velocity < 0) j = -1;
for (i = 0; i < abs(y_velocity); i++)
{
    if (place_free(x, y + j))
    {
        y += j;
    }
    else
    {
        y_velocity = 0;
        break;
    }
}

