window.log = console.log;
window.onload = function () { main();};

function main(){
 
  var elements=[];
  elements.push( new PointMass(1, 2,0,0) );
  elements.push( new PointMass(1, 6,0,0) );
    
  function centerGravity(p_elements){
    var i;
    var w_totalMass=0;
    for (i = 0; i < p_elements.length; i++){
      w_totalMass += p_elements[i].mass;
    }
    var w_firstMoment = new Vector(0,0,0);
    for (i = 0; i < p_elements.length; i++){
      w_firstMoment.add( Vector.multiply( p_elements[i].pos, p_elements[i].mass) );
    }
    return w_firstMoment.multiply( 1/w_totalMass );
  }

  function momentOfInertia(p_elements){
    var i;
    var w_centerGravity = centerGravity(p_elements);

    var w_pos=[]; // corrected positions from center of gravity
    for (i = 0; i < p_elements.length; i++){
      w_pos[i] = Vector.sub(p_elements[i].pos, w_centerGravity);
    }
    var w_m = new Vector(0,0,0);
    for (i = 0; i < p_elements.length; i++){
      w_m.add(new Vector( w_pos[i].y*w_pos[i].y + w_pos[i].z*w_pos[i].z,
                          w_pos[i].x*w_pos[i].x + w_pos[i].z*w_pos[i].z,
                          w_pos[i].x*w_pos[i].x + w_pos[i].y*w_pos[i].y
                        ).multiply(p_elements[i].mass)
            );
    }
    return w_m;
  }
  
  log("momentOfInertia: ", momentOfInertia(elements) );
}
