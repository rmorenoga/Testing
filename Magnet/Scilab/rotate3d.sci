// SOFTWARE     : Scilab >= 5.5.0
// PACKAGE      : rotate3d() : rotation of (x,y,z) points in 3D space
// LICENSE      : CeCILL-C : http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
// AUTHOR (C)   : Samuel GOUGEON - private individual
// COPYRIGHT    : Samuel GOUGEON - 2015
// VERSION      : 1.0 
// RELEASE DATE : 2015-08-09
// DISTRIBUTION : http://fileexchange.scilab.org/toolboxes/369000
// HISTORY      : 
//   1.0 - 2015-08-09: First publication on FileExchange
// 
// DISCLAIMER: This toolbox is provided as is, with NO WARRANTY of any kind.
//   Use it to your own risks & responsability.

function [varargout] = rotate3d(X, Y, Z, Rip, Rcenter)
//
// Computes new (x,y,z) cartesian coordinates of points rotated in the 3D space,
//  or/and the rotation matrix or/and its axis and angle of rotation.
//
// SYNTAXES
// --------
//                          rotate3d       // displays this help
//                          rotate3d demo  // display the demo script
//       Rop              = rotate3d(Rm)
//       Rm               = rotate3d(Rip)
//      [Rop, Rm]         = rotate3d(Rip)
//      [nX, nY, nZ]      = rotate3d(X, Y, Z, Rip [, Rcenter] )
// [nX, nY, nZ, Rop, Rm]  = rotate3d(X, Y, Z, Rip [, Rcenter] )
//
// PARAMETERS
// ----------
// X, Y, Z : scalars, vectors, matrices or hypermatrices of cartesian coordinates
//           of points to be rotated. X, Y, and Z must have the same numbers of
//           components.
//
// nX,nY,nZ: scalars, vectors, matrices or hypermatrices of cartesian decimal 
//           coordinates of rotated points. nX, nY and nZ take the sizes of X.
//
// Rip  : Rotation Input Parameters = Parameters describing the tri-dimensional 
//        rotation to perform. This argument may have 3 equivalent formats:
//
//      a) [a b c phi]: a vector of 4 decimal numbers. 
//         [a b c] are the coordinates of a direction vector of the axis
//         of the rotation. Not necessarily a unit vector.
//         phi is the rotation angle around the rotation axis [a b c],
//         in degrees. Its sign follows the right hand corkscrew rule with 
//         respect to the signed direction [a b c].
//         Then, we should have, whatever is phi: 
//         rotate3d(a,b,c, [a b c phi]) == [a b c]/norm([a b c])
//
//      b) [u1 u2 ; v1 v2 ; w1 w2]: a (3,2) matrix of decimal numbers.
//         The considered rotation turns the [u1 v1 w1] vector into the 
//         [u2 v2 w2] one. The norm of vectors is not taken into account. 
//         The underlying rotation is built such that, if both vectors have 
//         the same norm,
//         [u2,v2,w2] = rotate3d(u1,v1,w1, [u1 u2; v1 v2; w1 w2])
//
//      c) (3,3) rotation matrix. It must be real and with det(Rm)==1. 
//
// Rcenter : It may be either a boolean, or a vector of 3 decimal numbers 
//           = coordinates of the rotation center, the point around which 
//           {X,Y,Z} must be rotated:
//         a) If Rcenter = %t, the Center of Mass of given isoweighted {X,Y,Z}
//             points is computed and used as rotation center.
//         b) No indication or Rcenter=%f set Rcenter = [0 0 0]
//         c) Rcenter = [xc, yc, zc] is used as rotation center.
//
// Rm : (3,3) square real Rotation matrix with det(Rm)==1. It is such that
//      [nX(:)-xc  nY(:)-yc  nZ(:)-zc]' =  Rm * [X(:)-xc Y(:)-yc Z(:)-zc]'
//      whereas the rotation center is located at [xc yc zc].
//
// Rop : Row vector of 7 decimal numbers:
//       Rop(1:3) = unit vector of the rotation axis. When the rotation is the
//                 identity, its axis is undetermined and [%nan %nan %nan]
//                 is returned.
//       Rop(4)   = Rotation angle, in degrees.
//       Rop(5:7) = coordinates of the Center of Mass of the rotated object. 
//                  It is set as rotation center when Rcenter=%t is used.
//
// DESCRIPTION
// -----------
// rotate3d() works in a 3D orthonormal cartesian axes.
// Rop = rotate3d(Rm) computes and returns a unit vector Rop(1:3) of the rotation 
//    axis, and the rotation angle Rop(4) around it, corresponding to the 
//    rotation matrix Rm.
//
// Rm = rotate3d(Rip) computes and returns the (3,3) rotation matrix 
//    corresponding to the rotation axis specified  any directing vector
//    Rip(1:3), for the rotation angle Rip(4).
//    The rotation matrix always assumes that the rotation center is at [0 0 0].
//
// [Rop, Rm] = rotate3d(Rip) computes and returns the rotation matrix Rm,
//    the unit vector Rop(1:3) of the rotation axis, and the rotation angle 
//    Rop(4) around it, when the input rotation is specified through an
//    example of vector and its expected rotated version.
//
// When a set of points to be rotated is specified through their {X, Y, Z}
// input coordinates, the coordinates of corresponding rotated points
// are as well computed and returned. By default, the origin [0 0 0] is used
// as rotation center. Any other center may be explicitely specified through
// the Rcenter=[xc yc zc] parameter. When %t is assigned to Rcenter, then 
// the Center of Mass of the set of points is set as the rotation center.
// Its position AFTER the rotation is returned into Rop(5:7). 
//
// REFERENCE
// ---------
//  Comments, scoring and bug reports are welcome on
//  http://fileexchange.scilab.org/toolboxes/369000
//
// SEE ALSO
// --------
//  rotate      : Compute rotated coordinates of given points in 2D
//  rotate_axes : Interactively rotate a graphical Axes
//  move        : Translate a graphical element in 2D or 3D
//  scaling     : Apply a 2D homothecy (homogeneous dilatation) to coordinates
//                of given points.
//  householder : Symetrize coordinates of given points wrt. a 3D plane (mirror)
//
//EXAMPLES
//========
//// i = unit vector along (Ox), j = along (Oy), k = along (Oz)
//Rop = rotate3d([2 0 0 ; 0 3 0])  // (Ox)->(Oy)  = +90° around (Oz)
//Rop = rotate3d([1 1 0 ; 0 0 1])  // (i+j)->(Oz) = +90° around (i-j)
//Rm  = rotate3d([4 0 0 -90]);     //-90° around (+Ox) = {x'=x, y'=z, z'=-y}
//clean(Rm) 
//
//// Rotating the axis of any rotation gives always itself, for any angle:
// [a,b,c] = (1,2,3); 
// [rx, ry, rz] = rotate3d(a,b,c,[a b c %e]); 
// [rx ry rz]
//
//// APPLICATION with a set of points: Animation with a rotated object
//// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//// Enter "rotate3d demo" to display the script
//
//      ---------------------------------------------------------------------
    
    fname = "rotate3d"
    varargout = list()

    // Display the help
    // ----------------
    if argn(2)==0 then
        head_comments(fname)
        for i = 1:argn(1)
            varargout(i) = []
        end
        return
    end
    
    // Display the demo script
    // -----------------------
    if argn(2)==1 & type(X)==10 & X=="demo" then
        tmp = [
        "// To run the lines: Select and evaluate or copy/paste in the console"
        "//"
        "// APPLICATION with a set of points: Animation with a rotated object"
        "// --------------------------------"
        "// Creating the object to be rotated: a truncated ellipsoid"
        "p = [4 6 4];           // (initial) center position"
        "a = 4; b = 2; c = 8;   // sizes"
        "phi = linspace(0, 2*%pi, 37);"
        "theta = linspace(-%pi/2, 0.8, 19)'';"
        "X =  a * cos(theta)*cos(phi)  + p(1);"
        "Y =  b * cos(theta)*sin(phi)  + p(2);"
        "Z =  c * sin(theta)*ones(phi) + p(3);"
        "// Closing the truncature:"
        "tmp = ones(X(1,:));"
        "X($+1,:) = p(1)*tmp;"
        "Y($+1,:) = p(2)*tmp;"
        "Z($+1,:) = Z($,:);"
        ""
        "// Function showing the rotation of a given object (set of (X,Y,Z) points)"
        "function [nX,nY,nZ,Rop,Rm] = anim_rotation(X,Y,Z, Raxis, Rcenter)"
        "    // Setting the graphical axes and its light"
        "    clf"
        "    drawlater"
        "    l = light();"
        "    l.position = [-10 -10 15];"
        "    l.ambient_color = [1 1 1];"
        "    l.light_type = ""point"";"
        "    ax = gca();"
        "    ax.cube_scaling = ""off"";"
        "    axR = [80, 260]"
        "    xgrid(color(""grey80""))"
        ""
        "    // Drawing the rotation axis:"
        "    if typeof(Rcenter)==""boolean"" & Rcenter then"
        "        C = [mean(X) mean(Y) mean(Z)]"
        "    elseif type(Rcenter)==1"
        "        C = Rcenter"
        "    else "
        "        C=[0 0 0]"
        "    end"
        "    L = 10"
        "    Raxis = Raxis / norm(Raxis) * L"
        "    param3d(C(1) + Raxis(1)*[-1 1], .."
        "            C(2) + Raxis(2)*[-0.7 1], .."
        "            C(3) + Raxis(3)*[-0.7 1] )"
        "    e = gce()"
        "    e.thickness = 2"
        ""
        "    // Setting the (initial) observation point"
        "    ax.rotation_angles = axR"
        ""
        "    // Main loop on rotation angles"
        "    for a = 0:10:360    // rotation angles"
        "        drawlater"
        "        ell = findobj(""type"",""Fac3d"");     // Graphical address of the object"
        "        delete(ell);         // We remove the object from its former position"
        "        [nX, nY, nZ, Rop, Rm] = rotate3d(X,Y,Z, [Raxis a], Rcenter);"
        "        axR = ax.rotation_angles;"
        "        surf(nX, nY, nZ)   // Draw the object at its new position + orientation"
        "        s = gce();         // Now we set its surface properties"
        "        s.use_color_material = ""off"";"
        "        s.color_flag = 0;"
        "        s.ambient_color = scolor*0.6;"
        "        s.foreground = addcolor(scolor*0.9);"
        "        s.material_shininess = 10;"
        "        // We now draw a line joining (0,0,0) to the Center of Mass of the object"
        "        param3d([0 Rop(5)], [0 Rop(6)], [0 Rop(7)])"
        "        e = gce(); e.foreground = color(""grey50"")"
        "        ax.isoview = ""on"";"
        "        ax.rotation_angles = axR;"
        "        drawnow"
        "        sleep(100);"
        "    end"
        "endfunction"
        ""
        "scolor = name2rgb(""green"")/255; // change the surface''s color as you wish :)"
        "Rcenter = %f;          // rotation mode. %f is equivalent to [0 0 0]"
        "Raxis = [0 0 1];       // direction of the rotation axis"
        "[nX, nY, nZ] = anim_rotation(X, Y, Z, Raxis, Rcenter);"
        ""
        "// You can change the Rcenter or/and Raxis value and re-run anim_rotation(..)"
        "        "
        ]
        write(%io(2), tmp)
        for i = 1:argn(1)
            varargout(i) = []
        end
        return
    end
    
    // CHECKING or INITIALIZING INPUT PARAMETERS
    // =========================================
    if ~or(argn(2)==[1 4 5]) then
        msg = _("%s: Wrong number of input arguments: %s expected.\n")
        error(msprintf(msg, fname, 0, "1 | 4 | 5"))
    end
    if argn(2)==1 then
        if ~isdef("Rip","l")
            if isdef("X","l")
                Rip = X
            elseif isdef("Rm","l")
                Rip = Rm
            else
                msg = _("%s: Unknown input argument #%d.\n")
                error(msprintf(msg, fname, 1))
            end
        end
                
    else // 4 or 5 input arguments
        // X, Y, Z
        if or([size(Y,"*") size(Z,"*")]~=size(X,"*")) then
            msg = _("%s: input arguments #1, #2 and #3 must have the same number of elements\n")
            error(msprintf(msg, fname))
        end
        if or([type(X) type(Y) type(Z)]~=1) then
            msg = _("%s: input arguments #1, #2 and #3 must be real decimal numbers\n")
            error(msprintf(msg, fname))
        end
        if ~and([isreal(X) isreal(Y) isreal(Z)]) then
            msg = _("%s: input arguments #1, #2 and #3: complex numbers are not accepted\n")
            error(msprintf(msg, fname))
        end
        
        if type(Rip)~=1 & isreal(Rip) then
            msg = _("%s: Wrong type for argument #%d: real decimal numbers expected.\n")
            error(msprintf(msg, fname, 4))
        end
    end
    
    // Rip : Rotation parameters
    // ------------------------
    Ripp = 1; if argn(2)>1, Ripp = 4, end 
    if ~and(size(Rip)==[3 3]) & size(Rip,"*")~=4 & ..
       ~and(size(Rip)==[2 3]) & ~and(size(Rip)==[3 2])
        msg = _("%s: Wrong size for input argument #%d: a (3,2) or (2,3) or (3,3) matrix or 4-element vector expected.\n")
        error(msprintf(msg, fname, Ripp))
    end
    if type(Rip)~=1 | ~isreal(Rip)
        msg = _("%s: Wrong type for input argument #%d: real decimal numbers expected.\n")
        error(msprintf(msg, fname, Ripp))
    end
    
    // Rotation center
    // ---------------
    if argn(2)>4 & isdef("Rcenter","l") then
        if type(Rcenter)~=1 & typeof(Rcenter)~="boolean" then
            msg = _("%s: Wrong input argument #%d: scalar boolean or vector of 3 decimal numbers expected\n")
            error(msprintf(msg, fname, 5))
        end
        if typeof(Rcenter)=="boolean"
            if Rcenter(1)
                // we compute the center of mass of {X, Y, Z}
                Rcenter = [ mean(X) mean(Y) mean(Z) ]
            else
                Rcenter = [0 0 0]
            end
        else
            if length(Rcenter)~=3 | ~isreal(Rcenter)
                msg = _("%s: Wrong value for input argument #%d: vector of 3 real numbers expected\n")
                error(msprintf(msg, fname))
            end
            Rcenter = Rcenter(:)'
        end
    else
        Rcenter = [0 0 0]
    end
    
    // Checking output compliance
    // --------------------------
    if argn(1)>2 
        if argn(2)<4 then
            msg = _("%s: Mismatch between the number of input and output arguments. Please check the manual.\n")
            error(msprintf(msg, fname))
        end
        if argn(1)<3 & argn(2)>1
            msg = _("%s: %d extra input arguments => ignored.\n")
            warning(msprintf(msg, fname, argn(2)-1))
        end
        if argn(1)>5
            msg = _("%s: Too many output arguments expected.\n")
            error(msprintf(msg, fname))
        end
    end
    
    // ---------------------------------------------------------------------
    
    // PROCESSING
    // ==========
    // Setting derived rotation parameters
    // -----------------------------------
    Rm = []
    if length(Rip)==4 then
        Raxis = Rip(1:3)
        Rangle = pmodulo(Rip(4),360)/180*%pi

    elseif and(size(Rip)==[2 3]) | and(size(Rip)==[3 2])
        if size(Rip)==[2 3]
            Rip = Rip.'
        end
        u = Rip(:,1)
        v = Rip(:,2)
        if norm(u)==0 | norm(v)==0 then
            msg = _("%s: Wrong value for input argument #%d: vectors must be non null.\n")
            error(msprintf(msg, fname, Ripp))
        end
        // Determining the axis direction and angle
        Raxis = cross(u, v)
        tmp = norm(Raxis)
        if tmp==0 then
            Rangle = 0
            Raxis = %nan*[1 1 1] // undetermined and useless
        else
            Rangle = atan(tmp, u'*v)
        end
        
    elseif and(size(Rip)==[3 3])
        Rm = Rip
        if det(Rm)~=1 then
            msg = _("%s: Wrong value for input argument #%d: rotation matrix (with det(Rm)==1) expected\n")
            error(msprintf(msg, fname, Ripp))
        end
        u = [1 0 0]'
        v = Rm*u
        Raxis = cross(u, v)
        tmp = norm(Raxis)
        if tmp==0 then
            Rangle = 0
            Raxis = %nan*[1 1 1] // undetermined and useless
        else
            Rangle = atan(tmp, u'*v)
        end
    end
   
    // Setting the rotation matrix
    // ---------------------------
    if Rm==[] then
        if Rangle==0
            Rm = eye(3,3)
        else
            Raxis = Raxis/norm(Raxis)
            a = Raxis(1)
            b = Raxis(2)
            c = Raxis(3)
            Rm = cos(Rangle) * eye(3,3) + ..
                 sin(Rangle) * [0 -c b ; c 0 -a ; -b a 0] + ..
             (1-cos(Rangle)) * [a b c]'*[a b c]
         end
    end

    // Processing given points
    // -----------------------
    if argn(2)>=4 then
        // Centering and formating input points
        s = size(X)
        X = X(:)' - Rcenter(1)
        Y = Y(:)' - Rcenter(2)
        Z = Z(:)' - Rcenter(3)
        
        // Performing the rotation
        nP = Rm * [X ; Y ; Z]
        
        // Moving back and formating rotated points
        nX = matrix(nP(1,:) + Rcenter(1), s)
        nY = matrix(nP(2,:) + Rcenter(2), s)
        nZ = matrix(nP(3,:) + Rcenter(3), s)
    end

    // Setting Rop
    // ----------
    Rop = [ Raxis(:)'/norm(Raxis) Rangle/%pi*180 ]
    if argn(2)>=4
        Rop = [Rop mean(nX) mean(nY) mean(nZ)  ]
    end

    // -----------------------------------------------------------------------
    
    // SETTING VARARGOUT
    // =================
    // SYNTAXES
    //                          rotate3d      // displays this help
    //       Rop              = rotate3d(Rm)
    //       Rop              = rotate3d(Rip)
    //      [Rop, Rm]         = rotate3d(Rip)
    //      [nX, nY, nZ]      = rotate3d(X, Y, Z, Rip [, Rcenter] )
    // [nX, nY, nZ, Rop, Rm]  = rotate3d(X, Y, Z, Rip [, Rcenter] )
    
    lhs = argn(1)
    if lhs==1 then
        if or(length(Rip)==[6 9])
            varargout(1) = Rop
        else // length(Rip)==4
            varargout(1) = Rm
        end
    elseif lhs==2
        varargout = list(Rop, Rm)
    elseif lhs==3
        varargout = list(nX, nY, nZ)
    elseif lhs==4
        varargout = list(nX, nY, nZ, Rop)
    else
        varargout = list(nX, nY, nZ, Rop, Rm)
    end
    
endfunction
