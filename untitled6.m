function shiyan(r) 
    r=r; 
    t=0:0.01*pi:2*pi; 
    z=r*exp(i*t); 
    w=z+1./z; 
    plot(w); 
    axis equal; 