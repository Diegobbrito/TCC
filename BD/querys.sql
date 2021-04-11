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

# AcrescentarVant a tabela
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

#======================================== Tabela comandos   ================================================= #