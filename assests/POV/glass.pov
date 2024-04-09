/*
  *  This file is part of the CSG Raytracer
  *  http://www.cs.utah.edu/~bes/papers/csg/
  *
  *  CSG Raytracer by John W. Ratcliff on 10/12/1998
  *  This software is provided "as is" with no expressed
  *  or implied warranty.  I accept no liability for any
  *  problems that may result from using this software.
  *
  *  You may use this software for any non-commercial purpose
  *  as long as you retain this notice.  
  */
#include "colors.inc"

#declare Window_Glass =
texture{
  pigment{ rgbf<0.98,0.98,0.98,0.8>}
  finish { diffuse 0.1
           reflection 0.2
           specular 0.8
           roughness 0.0003
           phong 1
           phong_size 400}

  }

// Place the floor in the scene
//object{ Window_Glass}

box{ < -5, 0.1, -5 >, < 5, 0, 5 >
texture { Window_Glass } }

// Add a light source and camera for rendering
// Set up the camera
camera {
    location <0, 8, 0>
    look_at <0, 0, 0>
  }

// Set up the light source
light_source {
    100
    color White
  }



plane { <0,1,0> // normal vector
      , 0 // distance from origin
  pigment {
    color White
  }
}

  


