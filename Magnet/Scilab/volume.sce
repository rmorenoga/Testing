function V = volume(D,t)
// takes the Diameter (D) and thickness (t)) in inches
// transforms them into meters and then calculates
// the volume in m3 of the magnet

    f =  0.0254 // inch-meter factor
    mD = D*f
    mr = 0.5*mD
    mt = t*f
    V =  %pi*mr*mr*mt // in m3

endfunction
