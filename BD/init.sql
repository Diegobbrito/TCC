# Para realizar o uso do database do trabalho
use cpdlc;

# Scripts para a criação da base de dados do Trabalho de Graduação


# Criação da tabela de Torre de Comando, a qual seria o usuário que enviará a mensagem ao Vant
CREATE table torre_comando(
	id_torre integer primary key auto_increment,
	nome_da_torre varchar(200),
	password varchar(200)
);

# Criação da tabela de Vants
CREATE table vants(
	id_vant integer primary key auto_increment,
	nome_vant varchar(200)
);


# Criação da tabela de comunicação, onde teremos separação por categoria de acordo com o que o
# a aeronave vai executar
CREATE table mensagens(
	codigo_msg integer primary key auto_increment,
	id_categoria_msg integer,
	mensagem varchar(200),
	FOREIGN KEY (id_categoria_msg) references categorias(id_categoria)
);

CREATE TABLE categorias(
	id_categoria integer PRIMARY KEY auto_increment,
	nome_categoria varchar(200)
);
