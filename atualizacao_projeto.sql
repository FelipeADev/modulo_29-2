create table tb_cliente (
	id bigint,
	nome varchar(50) not null,
	codigo varchar(50) not null,
	cpf integer not null,
	constraint pk_id_cliente primary key(id)
);

create table tb_produto (
	id bigint,
	nome varchar(50) not null,
	codigo varchar(50) not null,
	preco integer not null,
	id_cliente bigint,
	constraint pk_id_produto primary key(id),
	constraint fk_id_cliente_produto foreign key (id_cliente) references tb_cliente(id)
);

select * from tb_cliente;