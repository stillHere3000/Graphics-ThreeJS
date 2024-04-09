/*
    *  A simple scene with a floor and a light source
    *  The floor is textured with a checker pattern
    *  The camera is positioned above the floor looking down
    *  The light source is positioned above the floor
    
*/

// Define the Floor Texture
#declare FloorTexture = texture {
    pigment { 
        
        checker color <1.0, 1.0, 1.0>, color <0.2, 0.2, 0.2> 
    }
    finish { 
        specular 0.6
        roughness 0.1
    }
}

// Set up the camera
camera {
    location <5, 10, 7.5>
    look_at <0, 0, 0>
}

// Set up the light source
light_source {
    <5, 10, 7.5>
    /*color White*/
}

// Create a floor using the defined texture
box {
    <-5, -0.1, -5>, <5, 0, 5>  // Coordinates of the opposite corners of the box
    texture { FloorTexture }
}





// Set up the camera
camera {
    location <0, 5, -7.5>
    look_at <0, 0, 0>
}

// Set up the light source
light_source {
    <0, 5, 7.5>
    color <1, 1, 1>
}

// Create a floor using the defined texture
box {
    <-500, -0.1, -500>, <500, 0, 500>  // Coordinates of the opposite corners of the box
    texture { FloorTexture }
}
