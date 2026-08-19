package FSM;

typedef enum {RED,GREEN,YELLOW,BLINK} LightState deriving(Bits,Eq,FShow);

function LightState nextState(LightState s);
    case(s)
        RED : return YELLOW;
        GREEN : return RED;
        YELLOW: return BLINK;
        BLINK: return GREEN;
    endcase
endfunction

module mkTrafficLight(Empty);
    Reg#(LightState) state <- mkReg(RED);
    rule tick;
        $display("Current state= ",fshow(state));
        state <= nextState(state);
    endrule

    Reg#(UInt#(6)) count <- mkReg(0);
    rule show(count < 6);
        count <= count+1;
        if(count==5)
           $finish;
    endrule
endmodule
endpackage