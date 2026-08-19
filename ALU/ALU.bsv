package ALU;

typedef enum {ADD,SUB,MUL,DIV} Op deriving (Bits,Eq);
typedef struct{UInt#(8) a ;
               UInt#(8) b;
              } Operands deriving(Bits,Eq);


interface ALUIfc ;
    method ActionValue #(UInt#(8)) compute(Operands in, Op operation);
endinterface

module mkALU (ALUIfc);
    method ActionValue #(UInt#(8)) compute(Operands in , Op operation);
        case(operation)
            ADD : return in.a+in.b;
            SUB : return in.a-in.b;
            MUL : return in.a*in.b;
            DIV : return (in.b==0) ? 0:(in.a/in.b);
            default : return 0;
        endcase
    endmethod
endmodule
endpackage