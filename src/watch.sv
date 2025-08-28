module watch(
    input

    output
);
    typedef enum logic [1:0] {COUNT, ED} state_t; 
    state_t state; // possiveis estados

    // COUNT - Sempre contando +1seg
    // ED - Modo edição (ENTER -> entra, ENTER -> ed_horas; ENTER -> sai)


    always_ff @(posedge clock or posedge reset) begin
        if(reset) begin
            state <= CONT;

        end

    end
endmodule