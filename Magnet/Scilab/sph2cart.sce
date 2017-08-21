function [x, y, z]=sph2cart(theta, phi, r)
  x = r.*(cos(phi).*sin(theta));
  y = r.*(sin(phi).*sin(theta));
  z = r.*cos(theta);
endfunction
