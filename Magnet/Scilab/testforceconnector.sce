
dirvec = [0,0,-1]
x = [0,0.018,0.003]

[fx,fy,fz] = forceatpointconnector(2,x,dirvec)

        disp(fx,"fx")
        disp(fy,"fy")
        disp(fz,"fz")
