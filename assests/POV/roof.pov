/*
  Glass Box
  A simple glass box with a predefined glass texture.
  The box is a rectangle with opposite corners at <-10, 0, -1> and <10, 2, 1>.
  The glass texture is defined in the material block.
  The glass texture is predefined in glass.inc.
  The glass texture has a pigment of white with a transparency of 0.5.
  The glass texture has a normal of bumps with a scale of 0.025.
  The glass texture has a finish of phong with a value of 1.0.
  The glass texture has an interior with an index of refraction of 1.5 and caustics of 0.25.
  The camera is located at <0, 2, -1> and looks at <0, 1, 0>.
  Two light sources are located at <2, 4, -3> and <-2, 4, 3> with a color of white.
  
*/

// Set up camera
camera {
  location <0, 2, -1>
  look_at  <0, 1,  0>
}

// Set up lights
light_source { <2, 4, -3> color <1, 1, 1>}
light_source { <-2, 4, 3> color <1, 1, 1>}

// Create a glass box (rectangle)
box {
  <-10, 0, -1>, <10, 2, 1>  // Coordinates of opposite corners
  
      // Predefined glass texture from glass.inc
    material{
          texture { pigment{ color rgbt<1,1,1,0.5>}
                    normal { bumps 0.5 scale 0.025 }
                    finish { phong 1.0 }
                  } // end of texture
          interior{ ior 1.5
                    caustics 0.25
                  } // end of interior
          } // end of material
      
}