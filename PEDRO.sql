


SELECT * FROM ALUNO;


-------BLOCO ANONIMO-------

DECLARE------ declarar as variaveis------
  vra NUMBER :=&ra;
vNome varchar(30) := '&nome';
--------inciar a inserção dos dados
Begin 
Insert into aluno values(vra,vnome);
commit;
end;
----

-------------------------------------------------
    CREATE OR REPLACE PROCEDURE prd_insert_aluno (
    p_ra   aluno.ra%TYPE,
    p_nome aluno.nome%TYPE
)-----criando os parametros no banco de dados
 IS
BEGIN
    INSERT INTO aluno VALUES (
        p_ra,
        p_nome
    );

    COMMIT;
END;
-------------------------------------
----para usarmos o procedure ,podemos aplicar ele com call , ---bloco anonimo------


CALL prd_insert_aluno (2020,'felipe');
EXEC prd_insert_aluno (6060,'talita');
EXECUTE prd_insert_aluno(3098,'LEO');

BEGIN
PF1788.prd_insert_aluno(1234,'WIARDS');
END;


-------------UPDATE USANDO A PROCEDURE-------
    CREATE OR REPLACE PROCEDURE prd_update_aluno (
    p_ra   aluno.ra%TYPE,
    p_nome aluno.nome%TYPE
)-----criando os parametros no banco de dados
 IS
BEGIN
    update aluno
    set nome = p_nome
    where
    Ra = P_RA;
    

    COMMIT;
END;

---------DELETE USANDO A PROCEDURE-------
    CREATE OR REPLACE PROCEDURE prd_DELETE_aluno (
    p_ra   aluno.ra%TYPE)
 IS
BEGIN
    DELETE FROM ALUNO
    WHERE RA=P_RA;
    COMMIT;
END;
-------------------------
Select count(1) from tabela_vendas;

create table tabela_de_vendas as select * from pf1788.tabela_vendas;


CALL prd_delete_aluno(20);