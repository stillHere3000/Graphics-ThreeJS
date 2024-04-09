/*
    * This is a simple example of a scene file for POV-Ray.
    * It creates a textured wall and a light source.
    */

#declare WallTexture = texture {
    pigment{ color rgb<0.75,0.6,0.45>}
            normal { bumps 0.5 scale 0.005 }
            finish { phong 1 }
    
}

// Set up the camera
camera {
    location <0, 3, -10>
    look_at <0, 2.1, 0>
}

// Set up the light source
light_source {
    <5, 10, -7.5>
    color rgb <1, 1, 1>
    
}

// Create a wall using the defined texture
box {
    <-5, -0.1, -5>, <5, 5, 5>  // Coordinates of the opposite corners of the box
    texture { WallTexture }
}