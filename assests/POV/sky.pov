/*
    This is a simple scene that demonstrates the use of the fog
    feature in POV-Ray.  The scene consists of a plane that is
    textured with a bozo pattern.  The bozo pattern is used to
    create a simple gradient on the plane.  The fog is then
    applied to the plane to create a misty effect.  The fog is
    set to be a distance fog, which means that the fog is
    applied based on the distance from the camera.  The fog is
    set to be white, and the fog offset is set to 0.1.  The fog
    altitude is set to 1.5, which means that the fog will start
    at a height of 1.5 units above the plane.  The turbulence
    value is set to 1.8, which creates a wavy effect in the fog.
    The fog is set to be 50 units thick, which means that the
    fog will extend 25 units above and below the plane.
*/
plane{<0,1,0>,1 hollow
       texture{
        pigment{ bozo turbulence 0.92
          color_map {
           [0.00 rgb <0.2, 0.3, 1>*0.5]
           [0.50 rgb <0.2, 0.3, 1>*0.8]
           [0.70 rgb <1,1,1>]
           [0.85 rgb <0.25,0.25,0.25>]
           [1.0 rgb <0.5,0.5,0.5>]}
          scale<1,1,1.5>*2.5
          translate<1.0,0,-1>
          }// end of pigment
        finish {ambient 1 diffuse 0}
        }// end of texture
        scale 10000
     }// end of plane

// fog on the ground -------------
fog {  
    fog_type   2
      distance   50
      color     <1.0, 1.0, 1.0>
      fog_offset 0.1
      fog_alt    1.5
      turbulence 1.8
    }