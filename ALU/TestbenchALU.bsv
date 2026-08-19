package TestbenchALU;

import ALU :: *;

module mkTestbenchALU(Empty);
    ALUIfc alu <- mkALU;
    Reg #(UInt#(5)) step <- mkReg(0);

    rule drive;
        case(step)
            0: begin
                Operands op = Operands{a:8,b:5};
                let result <- alu.compute(op,ADD);
                $display("8+5=%0d",result);
            end

            1: begin
                Operands op = Operands{a:9,b:2};
                let result <- alu.compute(op,SUB);
                $display("9-2=%0d",result);
            end
            2: begin
                Operands op = Operands{a:3,b:6};
                let result <- alu.compute(op,MUL);
                $display("3*6=%0d",result);
            end
            3: begin
                Operands op = Operands{a:20,b:4};
                let result <- alu.compute(op,DIV);
                $display("20/4=%0d",result);
            end
            4: $finish;
        endcase
        step <= step + 1;
    endrule
endmodule
endpackage
