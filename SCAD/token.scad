// Bumper Cars - Token
// GNU GPL v3
// Mattia Biondi
// https://git.io/mattiabiondi

$fn=1000;

module token()
{
    union()
    {
        cylinder(h=2.8, d=27.5, center=true);
        
        difference()
        {
            cylinder(h=5.25, d=11.8, center=true);
            cylinder(h=6, d=3.6, center=true);
        }    
    }
}

token();