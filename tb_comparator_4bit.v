module tb_comparator_4bit;
    reg [3:0] A, B;
    wire A_eq_B, A_gt_B, A_lt_B;

    comparator_4bit uut (
        .A(A),
        .B(B),
        .A_eq_B(A_eq_B),
        .A_gt_B(A_gt_B),
        .A_lt_B(A_lt_B)
    );

    initial begin
        $display("A\tB\tA==B\tA>B\tA<B");
        $monitor("%d\t%d\t%b\t%b\t%b", A, B, A_eq_B, A_gt_B, A_lt_B);
        
        A = 4'b0000; B = 4'b0000; #10;
        A = 4'b0101; B = 4'b0011; #10;
        A = 4'b0110; B = 4'b0110; #10;
        A = 4'b0011; B = 4'b1010; #10;
        A = 4'b1111; B = 4'b1111; #10;
        $finish;
    end
endmodule
