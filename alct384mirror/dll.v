// DLL component. Includes the reset counter.
module dll (CLKIN, CLK0, CLK2X, clksh, clock_lac, locked);
    input CLKIN;
    output CLK0, CLK2X, locked, clksh, clock_lac;

    wire   CLK0_dll, CLK2X_dll;
    wire   LOCKED_dll;
    reg [24:0] resetcnt = 25'h1fffff8;

    // this dll is used for the clock frequency multiplication by two
    CLKDLL DLL
    (
     .CLKIN(CLKIN),
     .CLKFB(CLK0),
     .RST(resetcnt[24]),
	 .CLK0(CLK0_dll),
     .CLK90(clksh),
	 .CLK180(),
     .CLK270(),
	 .CLK2X(CLK2X_dll),
     .CLKDV(),
	 .LOCKED(LOCKED_dll)
    ); 
	
	FDRSE #(.INIT(1'b0)) ulac 
	(
	 .Q	(clock_lac),		// Data output
	 .C	(CLK2X),			// Clock input
	 .CE(1'b1),		// Clock enable input
	 .D	(!clksh),	// Data input
	 .R	(1'b0),				// Synchronous reset input
	 .S	(1'b0)				// Synchronous set input
    );

    always @(posedge CLKIN)
    begin
	    resetcnt <= (LOCKED_dll == 1) ? 0 : resetcnt + 1;
    end

    BUFG   clkg   (.I(CLK0_dll),   .O(CLK0));
    BUFG   clk2xg (.I(CLK2X_dll),  .O(CLK2X));
    assign locked = LOCKED_dll;
	
endmodule
