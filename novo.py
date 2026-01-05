import hashlib as hb

print(hb.algorithms_available)

#verifcar algoritmos de acordo com so
print(hb.algorithms_guaranteed)

#utilizar o sha256

algo = hb.sha256()
print(algo.digest())
message = 'A melhor forma de prever o futuro é criá-lo'.encode() #transformar em byte

algo.update(message)
print(algo.hexdigest()) #imprimir em hexadecimal

# utilizar o MD5

md5 = hb.md5()
md5.update(message)
print(md5.hexdigest())