package ProducerConsumer;

import FIFO::*;
module mkProducerConsumer(Empty);

   FIFO#(UInt#(8)) fifo <- mkFIFO;
   Reg#(UInt#(8)) data <- mkReg(1);
   Reg#(UInt#(8)) count <- mkReg(0);

   rule producer (data <= 10);
      fifo.enq(data);
      $display("Produced %0d", data);
      data <= data + 1;
   endrule

   rule consumer;
      
         UInt#(8) value = fifo.first;
         UInt#(16) square = zeroExtend(value) * zeroExtend(value);

         $display("Consumed %0d, Square = %0d", value, square);

         fifo.deq;
         count <= count + 1;
      
   endrule

   rule stop (count == 10);
      $finish;
   endrule

endmodule

endpackage