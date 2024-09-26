CREATE or replace procedure prd_delete is
contador number := 0;
begin
    for x in (select * from tabela_de_vendas)loop
    delete from tabela_de_vendas
    where ordernumber = x.ordernumber;
    
    if mod(contador, 200) = 0 then
        commit;
        end if;
        contador := contador +1;
    end loop;
    
end;

SELECT * FROM  TABELA_VENDAS;


------------------------PROCEDURE PARA NOVO PEDIDO-----------
CREATE OR REPLACE PROCEDURE prd_INSERT_pedido(
    P_cod_pedido   pedido.cod_pedido,
    P_cod_pedido_relacionado  pedido.cod_pedido_relacionado,
    P_cod_cliente pedido.cod_cliente ,
    P_cod_usuario ,
    P_cod_vendedor,
    P_dat_pedido,
    P_dat_cancelamento,
    P_dat_entrega,
    P_val_total_pedido,
    P_val_desconto,
    P_seq_endereco_cliente
FROM
    pedido;
        
---------------------------------------------------------
-----criando os parametros no banco de dados
 IS
BEGIN
    INSERT INTO aluno VALUES (
        p_ra,
        p_nome
    );

    COMMIT;
END;