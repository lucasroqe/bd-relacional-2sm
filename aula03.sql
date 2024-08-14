-- criar banco de dados bd_aula03
CREATE DATABASE bd_aula03;

-- criar tabelas do MER 
CREATE TABLE tbl_cliente (
    codigo_cliente INTEGER PRIMARY KEY,
    nome text NOT NULL,
    cidade text,
    endereco text
);

CREATE TABLE tbl_emprestimo (
    numero_emprestimo INTEGER PRIMARY KEY,
    codigo_cliente INTEGER,
    codigo_livro INTEGER
);

CREATE TABLE tbl_titulo (
    codigo_titulo INTEGER PRIMARY KEY,
    titulo text NOT NULL,
    descricao text,
    categoria text
);

CREATE TABLE tbl_livros (
    cod_livros INTEGER PRIMARY KEY,
    codigo_titulo INTEGER,
    status text
);

-- criar domains
CREATE DOMAIN chk_status text check (value in('DISPONIVEL','ALUGADO'));
CREATE DOMAIN chk_categoria text check (value in('DRAMA','COMEDIA'));

-- adicionar domain a tabela
ALTER TABLE tbl_titulo ALTER COLUMN categoria TYPE chk_categoria;
ALTER TABLE tbl_livros ALTER COLUMN status TYPE chk_status;

-- adicionar chaves estrangeiras
ALTER TABLE tbl_emprestimo ADD CONSTRAINT fk_cod_cliente FOREIGN KEY (codigo_cliente) REFERENCES tbl_cliente (codigo_cliente);

ALTER TABLE tbl_emprestimo ADD CONSTRAINT fk_cod_livro FOREIGN KEY (codigo_livro) REFERENCES tbl_livros (cod_livros);

ALTER TABLE tbl_livros ADD CONSTRAINT fk_cod_titulo FOREIGN KEY (codigo_titulo) REFERENCES tbl_titulo (codigo_titulo);