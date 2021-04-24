# -*- coding: utf-8 -*-

import mysql.connector
from flask import Flask
from flask import request


# Realizar a configuração para a conexão no banco
mydb = mysql.connector.connect(
    host = 'localhost',
    user = 'tcc',
    password = 'Seformar@21',
    database = 'cpdlc'
)


# nome da api
app = Flask(__name__)

@app.route('/query_vant', methods=['GET'])
def query_vant():

    """
        Rota que retorna um dicionario com as informações de vant para
        acrescentar em um listbox para escolha de envio da torre de comando
    """

    mycursor = mydb.cursor()
    query = "select * from vants"
    mycursor.execute(query)
    result = mycursor.fetchall()

    select_dict = {'vants': {'vantx': {'id_vant':'', 'nome_vant':''}}}

    for item in result:
        desired = select_dict.get('vants')
        x = 'vant'+ str(item[0])
        desired.update({x: {'id_vant': item[0], 'nome_vant': item[1]}})

    r = select_dict
    return r

@app.route('/login/<string:username>&<string:password>', methods=['POST'])
def query_login(username, password):

    """
        Rota que recebe informações de usuário e senha para consulta no banco
        e assim realizar o login no simulador
    """

    user = str(username)
    passw = str(password)

    mycursor = mydb.cursor()
    query = "select nome_da_torre,password from torre_comando where nome_da_torre='{}' and password='{}'".format(user,passw)
    mycursor.execute(query)
    result = mycursor.fetchone()
    
    if result:
        return 'true'
    
    return 'false'

@app.route('/query_msg/<string:nome_categoria>', methods=['POST'])
def query_msg(nome_categoria):

    """
        Rota que coleta as mensagens de acordo com a categoria a ser escolhida na tela
        de escolha de mensagens do front-end
    """

    categoria = str(nome_categoria).lower()

    mycursor = mydb.cursor()
    query = "select m.mensagem from mensagens m where m.id_categoria_msg = (select id_categoria from categorias c where c.nome_categoria = '{}')".format(categoria)
    mycursor.execute(query)
    result = mycursor.fetchall()

    lista_msg = []
    if result:
        for msg in result:

            lista_msg.append(msg[0])

        dicio_msg = {}
        dicio_msg['msg'] = lista_msg
    else:
        dicio_msg = 'Erro ao carregar'

    return dicio_msg
