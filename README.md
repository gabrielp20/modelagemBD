# modelagemBD

Este projeto foi desenvolvido com o objetivo de criar um sistema de acompanhamento de cursos, turmas e alunos. O banco de dados proposto foi modelado para armazenar informações importantes sobre essas entidades e fornecer recursos para gerenciar e acessar essas informações de forma eficiente.

Existem outras entidades além dessas três?
Sim, Além das entidades de cursos, turmas e alunos, também incluímos entidades de Instrutores,matrículas e Pagamentos. Essas entidades complementam as informações das entidades principais e permitem uma melhor gestão e acompanhamento dos cursos.

Quais são os principais campos e tipos?
Cada entidade possui campos específicos que armazenam informações relevantes. Por exemplo, a entidade de cursos possui campos como nome, descrição, carga horária.Os principais tipos são INT,VARCHAR,DATE e TEXT.

Como essas entidades estão relacionadas?
As entidades estão relacionadas da seguinte forma:
Um curso é ministrado por um ou mais instrutores (relacionamento N:M)
Uma turma é oferecida para um curso específico (relacionamento 1:N)
Um aluno pode se matricular em uma ou mais turmas (relacionamento N:M)
Um instrutor pode ministrar um ou mais cursos (relacionamento N:M)
Uma matrícula relaciona um aluno a uma turma específica (relacionamento 1:1)
Um pagamento relaciona uma matrícula a um ou mais pagamentos (relacionamento 1:N)

Modelagem

![image](https://imgur.com/AgKvRFz.png)


Vamos tentar pensar em 2 registros para cada entidade para checar o
preenchimento das informações no nosso modelo.

![image](https://imgur.com/OOCcLPw.png)

![image](https://imgur.com/fs3Lgxz.png)

![image](https://imgur.com/oT75rnd.png)

![image](https://imgur.com/nFAyJRC.png)

![image](https://imgur.com/naUzG8D.png)

![image](https://imgur.com/r09dkBn.png)







