import re 

text = 'Cidade maravilhosa é o Rio de Janeiro'

match = re.search(r'Rio', text) 
print(f'inicio: {match.start()}')
print(f'fim: {match.end()}') 

#buscando o índice que possui o ponto 

site = 'www.cursoemvideo.com'
match = re.search(r'\.', site) 
print(f'O índice é: {match}')

pattern = "[a-m]"
result = re.findall(pattern, text)
print(result) 
#verificar o início de uma string
phrases = ['minha casa é linda', 'meu cachorro é manso', 'viajei para a Costa Rica']
rule = r'^A'
for f in phrases:
    if re.match(rule,f):
        print(f'corresponde: {f}')
    else:
        print(f'não corresponde: {f}')