#language: pt

Funcionalidade:
Excluir uma lista após criada

@excluir_lista
Cenário:
Dado que tenho uma lista pronta no meu manager
Quando quero remover clico no menu
E clico na opção remover 
E uma mensagem de alerta é exibida
E clico em remover
Então a lista deve ser removida
