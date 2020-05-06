#include "colors.inc"
//establecemos un fondo de color gris
background {
    color Gray
}
//posicionamos la camara
camera{
    location<0,0,-5>
    look_at<0,0,0>
}
light_source{
    <1,10,0>
    color White
    spotlight
    radius 13
    falloff 15
    point_at <0.9, 0, 0>
}

difference{
   
   blob {
    threshold .65
    sphere { <0,0,0>, .8, 3 pigment {Blue} }
    sphere { <0,1,0>,.8, 1 pigment {Yellow} }
    sphere { <0.8,0.5,0>,.8, 1 pigment {Yellow} }
    sphere { <-0.8,0.5,0>,.8, 1 pigment {Yellow} }
    cylinder { <0,-2,0>, <0,-0.5,0>, .5, 1 pigment{Blue} }
    finish { phong 1 }
    }
    sphere { <0,0.3,0>, .6 pigment {Yellow} } 
}