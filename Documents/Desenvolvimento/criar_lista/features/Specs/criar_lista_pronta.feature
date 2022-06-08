#language: pt

Funcionalidade: Fazer uma lista
-Eu como usuário logado
-Quero criar uma lista pronta de presentes



# Cenário: Fazer login com um usuário válido no painel de controle
# Quando estou na pagina do painel de controle
# #Quando digito meu email e senha
# Então eu estou logada no painel


# Contexto:
# Dado que estou logada no painel e quero fazer uma lista
# 


Cenário: acessar a página de lista de presentes
Dado que estou logada no painel e quero fazer uma lista
Quando eu clicar no botão de Criar
E escolher a lista pronta na página
E clicar em publicar lista
E escolher a página onde ela será publicada
E clicar em continuar
Então a lista foi adicionada no manager de listas
