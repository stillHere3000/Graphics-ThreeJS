/*
    Not used in production, just for fun.
*/

// Camera settings
camera {
    location <0, 2, -20>
    look_at <0, 0, 0>
}

// Light source
light_source {
     <0, 10, -10> 
    color <1.0, 1.0, 1.0> 
    }

// Ground plane
plane {
    y, 0
    pigment { color rgb <0.4, 0.8, 0.2> }
}

// Grass blades
#declare Blade =
union {
    cone { <0, 0, 0>, 0.01, <0, 1, 0>, 0.15 }
    sphere { <0, 0.2, 0>, 0.05 }
    pigment { color rgb <0, 0.8, 0> } // Green color
    translate <0, 0.2, 0>
}

#declare BladeGroup =
union {
    #local Angle = 0;
    #while (Angle < 360)
        object { Blade rotate <0, Angle, 0> }
        #local Angle = Angle + 15;
    #end
}

#declare GrassPatch =
union {
    #local X = -50;
    #while (X <= 50)
        #local Z = -10;
        #while (Z <= 60)
            object { BladeGroup translate <X, 0, Z> }
            #local Z = Z + 0.5;
        #end
        #local X = X + 0.5;
    #end
}

// Place grass patches
object { GrassPatch }

// Additional settings
global_settings {
    assumed_gamma 1.0
}
