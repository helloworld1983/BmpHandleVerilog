//------------------------------------------------------------------------------
// Copyright (c) 2018 by Ando Ki.
// 3-clause BSD license.
//------------------------------------------------------------------------------
module mod_mem
     #(parameter SIZE=(640*480*3)*4)
(
       input   wire  dummy
);
    //--------------------------------------------------------------------------
    reg [7:0] store[0:SIZE-1];
    //--------------------------------------------------------------------------
    function [7:0] write;
         input [31:0] addr;
         input [ 7:0] data;
    begin
         store[addr] = data;
         write=data;
    end
    endfunction
    //--------------------------------------------------------------------------
    function [7:0] read;
         input  [31:0] addr;
    begin
         read=store[addr];
    end
    endfunction
    //--------------------------------------------------------------------------
endmodule
//------------------------------------------------------------------------------
// Revision history:
//
// 2018.04.08: Started by Ando Ki (adki@future-ds.com, andoki@gmail.com)
//------------------------------------------------------------------------------
