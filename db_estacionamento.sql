create database db_estacionamento;
use db_estacionamento;

create table tb_cliente(
id int primary key auto_increment,
nome varchar(120),
telefone varchar(50)
);

create table tb_veiculo(
ID int primary key auto_increment,
placa varchar(50),
modelo varchar(50)
); 

create table tb_entrada_saida(
dt_entrada date,
dt_saida date,
ID_veiculo int,
ID_cliente int
 );
 
alter table tb_entrada_saida
add constraint fk_veiculo_ID
	foreign key (ID_veiculo)
    references tb_veiculo(ID)
    on delete cascade,
add constraint fk_cliente_ID
	foreign key (ID_cliente)
    references tb_veiculo(ID)
    on delete cascade,
    
add primary key (ID_veiculo, ID_cliente)

 