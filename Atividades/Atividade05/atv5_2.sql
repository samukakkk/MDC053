create table pessoa(
	id int not null,
	nome VARCHAR(100) not null,
	primary KEY(id)
);

create table endereco(
	id INT not null,
	logradouro VARCHAR(100),
	numero INT default 0,
	cep CHAR(0) not null,
	cidade VARCHAR(30),
	uf CHAR(2) not null,
	primary foreign key (id) references pessoa(id)
);

create table fisica(
	id int not null,
	sexo char(1),
	cpf char(11) not null,
	primary foreign key (id) references pessoa(id)
);

create table juridica(
	id int not null,
	sexo char(1),
	cnpj char(14) not null,
	primary foreign key (id) references pessoa(id)
);