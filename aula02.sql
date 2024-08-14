-- Criar banco de dados bd_sistema_bancario
CREATE DATABASE bd_sistema_bancario;

-- Criar 5 tabelas quaisquer
CREATE TABLE nome(id int, nomes varchar);
CREATE TABLE cidade(estado varchar, pais varchar);
CREATE TABLE telefone(numero int, ddd int);
CREATE TABLE email(ende varchar);
CREATE TABLE cep(id int);

-- Criar tabelas conforme MER (Sistema Bancario):
CREATE TABLE cliente(nome_cliente varchar primary key, cidade_cliente varchar, endereco_cliente varchar);

CREATE TABLE conta(numero_conta int primary key, nome_agencia varchar, saldo real);

CREATE TABLE emprestimo(numero_emprestimo int primary key, nome_agencia varchar, valor real);

CREATE TABLE agencia(nome_agencia varchar primary key, cidade_agencia varchar, depositos int);

-- Deletar as 5 tabelas criadas aleatoriamente
DROP TABLE nome;
DROP TABLE cidade;
DROP TABLE telefone;
DROP TABLE email;
DROP TABLE cep;

-- alterar as tabelas conforme o MER atualizado
ALTER TABLE cliente rename to tbl_cliente;
ALTER TABLE conta rename to tbl_conta;
ALTER TABLE emprestimo rename to tbl_emprestimo;
ALTER TABLE agencia rename to tbl_agencia;

ALTER TABLE tbl_cliente ADD COLUMN idade int;
ALTER TABLE tbl_cliente ADD COLUMN cpf int;

-- Criar um esquema com o seu nome
CREATE SCHEMA lucas_roque;