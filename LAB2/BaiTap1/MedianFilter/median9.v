module median9 (
    input  [7:0] p0,p1,p2,p3,p4,p5,p6,p7,p8,
    output [7:0] med
);
    reg [7:0] a0,a1,a2,b0,b1,b2,c0,c1,c2;
    reg [7:0] d0,d1,d2,e0,e1,e2,f0,f1,f2;
    reg [7:0] m0,m1,m2,m3,m4;
    reg [7:0] t; 

    always @(*) begin
        // Stage 1: Sort Rows
        a0=p0; a1=p1; a2=p2; if(a0>a1)begin t=a0;a0=a1;a1=t;end if(a1>a2)begin t=a1;a1=a2;a2=t;end if(a0>a1)begin t=a0;a0=a1;a1=t;end
        b0=p3; b1=p4; b2=p5; if(b0>b1)begin t=b0;b0=b1;b1=t;end if(b1>b2)begin t=b1;b1=b2;b2=t;end if(b0>b1)begin t=b0;b0=b1;b1=t;end
        c0=p6; c1=p7; c2=p8; if(c0>c1)begin t=c0;c0=c1;c1=t;end if(c1>c2)begin t=c1;c1=c2;c2=t;end if(c0>c1)begin t=c0;c0=c1;c1=t;end

        // Stage 2: Sort Cols
        d0=a0; d1=b0; d2=c0; if(d0>d1)begin t=d0;d0=d1;d1=t;end if(d1>d2)begin t=d1;d1=d2;d2=t;end if(d0>d1)begin t=d0;d0=d1;d1=t;end
        e0=a1; e1=b1; e2=c1; if(e0>e1)begin t=e0;e0=e1;e1=t;end if(e1>e2)begin t=e1;e1=e2;e2=t;end if(e0>e1)begin t=e0;e0=e1;e1=t;end
        f0=a2; f1=b2; f2=c2; if(f0>f1)begin t=f0;f0=f1;f1=t;end if(f1>f2)begin t=f1;f1=f2;f2=t;end if(f0>f1)begin t=f0;f0=f1;f1=t;end

        // Stage 3: Cross
        m0=e0; m1=d1; m2=e1; m3=f1; m4=e2;
        if(m0>m1)begin t=m0;m0=m1;m1=t;end
        if(m3>m4)begin t=m3;m3=m4;m4=t;end
        if(m2>m4)begin t=m2;m2=m4;m4=t;end
        if(m2>m3)begin t=m2;m2=m3;m3=t;end
        if(m1>m4)begin t=m1;m1=m4;m4=t;end
        if(m0>m3)begin t=m0;m0=m3;m3=t;end
        if(m0>m2)begin t=m0;m0=m2;m2=t;end
        if(m1>m3)begin t=m1;m1=m3;m3=t;end
        if(m1>m2)begin t=m1;m1=m2;m2=t;end
    end
    assign med = m2;
endmodule