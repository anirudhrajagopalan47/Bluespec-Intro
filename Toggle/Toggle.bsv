package Toggle;

module mkToggle(Empty);
    Reg#(UInt#(8)) count <- mkReg(0);
    (* descending_urgency = "do_incr,do_decr"*)
    rule do_incr(count < 10);
        count <= count + 1;
        $display("Increment Rule fired: Count=%0d",count);
    endrule

    rule do_decr(count > 0);
        count <= count -1 ;
        $display("Decrement Rule fired: Count=%0d",count);
    endrule
    $finish;
endmodule
endpackage
