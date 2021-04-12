# Script baśico para adicionar informações as tabelas

# Declara com base de dados utilizar 
use cpdlc;

#================================ Tabela Torre de comando ============================================== #

# Acrescentar torre de comando a tabela
INSERT into torre_comando (nome_da_torre, password) values ('torre_comando_teste', 'torreteste');

# Ver todos os dados contidos dentro da tabela torre de comando
SELECT * from torre_comando;

# Para deletar alguma linha da tabela torre de comando
DELETE from torre_comando where id_torre = 4;


#======================================== Tabela de Vants ================================================= #

# Acrescentar Vant a tabela
INSERT  into vants 
	(nome_vant) 
values 
	('vant_001'),
	('vant_002'),
	('vant_003'),
	('vant_004'),
	('vant_005'),
	('vant_006'),
	('vant_007'),
	('vant_008'),
	('vant_009'),
	('vant_010');
	
# Ver todos os dados contidos dentro da tabela de Vants
SELECT * from vants;

# Deletar alguma informação da tabela de Vants
DELETE from vants  where id_vant = 11;

#======================================== Tabela categorias ================================================= #

# Acrescentar tipo da categoria na tabela
insert into categorias 
	(nome_categoria)
values
	('climb'),
	('route'),
	('descend'),
	('comms'),
	('speed'),
	('report'),
	('emerg'),
	('crossing');

# Ver todos os dados contidos dentro da tabela de categorias
select * from categorias c;

# Deletar alguma informação da tabela de categorias
DELETE from categorias where id_categoria = 13;

#======================================== Tabela mensagens ================================================= #

# Acrescentar mensagens padronizadas a tabela
INSERT into mensagens 
	(id_categoria_msg, mensagem)
values
	(1, 'CLIMB TO FLXXX'),
	(1, 'MAINTAIN FLXXX'),
	(1, 'CLIMB TO AND MAINTAIN FLXXX');
-- 	(2, ''),
-- 	(2, ''),
-- 	(2, ''),
-- 	(3, ''),
-- 	(3, ''),
-- 	(3, ''),
-- 	(4, ''),
-- 	(4, ''),
-- 	(4, ''),
-- 	(5, ''),
-- 	(5, ''),
-- 	(5, ''),
-- 	(6, ''),
-- 	(6, ''),
-- 	(6, ''),
-- 	(7, ''),
-- 	(7, ''),
-- 	(7, ''),
-- 	(8, ''),
-- 	(8, ''),
-- 	(8, '');

# Ver todos os dados contidos na tabela de mensagens
SELECT * from mensagens m ;

# Deletar alguma informação da tabela de mensagens
DELETE from mensagens where id_categoria_msg = 15;

