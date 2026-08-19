package Swap;

module mkSwap(Empty);
    Reg#(UInt#(8)) a <- mkReg(5);
    Reg#(UInt#(8)) b <- mkReg(9);
    Reg#(UInt#(8)) cycle <- mkReg(0);
    rule swap ;
        $display("Before swap: a=%0d b=%0d", a, b);
        a <= b;
        b <= a;
    endrule
    
    rule stop;
        cycle<=cycle+1;
        if(cycle==5)
           $finish;
    endrule


endmodule
endpackage
