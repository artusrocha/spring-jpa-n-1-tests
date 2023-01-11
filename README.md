> The default depends on the cardinality of the relationship. All to-one relationships use FetchType.EAGER and all to-many relationships FetchType.LAZY.

### Cenário 1

requisiçãode API gerou:
- 18 selects


Pontos negativos:
- Exposição da entidade/model em API publica
    - Expõe detalhes da implementação interna, dificultando evoluções internas
    - Quando o objeto é serializado ele fará o fetch de campos que estejam marcados como Lazy
- Busca não paginada
- 

---

### Cenário 2

Mudança: uso de Dto e paginação

requisiçãode API gerou:
- 16 selects


Pontos negativos:
- Maior complexidade para fazer parsing/conversão de entidade para DTO

---

### Cenário 3

Mudança: adicionando FetchType.LAZY em todos os relacionamentos

requisiçãode API gerou:
- 21 selects


Pontos negativos:
- Mesma complexidade do cenáio 2 na quest: parsing/conversão de entidade para DTO
- Aumento na quantidade de queries 

---

### Cenário 4

Mudança: adicionando FetchType.LAZY em todos os relacionamentos

requisição API gerou:
- 21 selects


Pontos negativos:
- Mesma complexidade do cenáio 2 na quest: parsing/conversão de entidade para DTO
- Aumento na quantidade de queries 

