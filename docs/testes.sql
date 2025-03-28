use escola;

insert into Aluno (ra, nome, email, telefones, atividades) values
('0918', 'Eduardo Costa', 'costa@gmail.com', '[1,2]', '[1]'),
('1886', 'Ingrid Godoy', 'godoy@gmail.com', '[3]', '[2,3]'),
('1976', 'Mateus Alves', 'alves@gmail.com', '[4]', '[4]'),
('2348', 'Mariana Souza', 'souza@gmail.com', '[5,6,7]', '[5]');

insert into Telefone (id, numero, tipo, alunoRA, aluno) values
(1, '3805-4477', 'fixo', '0918', 'Eduardo Costa'),
(2, '9971-3122', 'celular', '0918', 'Eduardo Costa'),
(3, '9321-0956', 'celular', '1886', 'Ingrid Godoy'),
(4, '3807-8480', 'fixo', '1976', 'Mateus Alves'),
(5, '3808-3391', 'fixo', '2348', 'Mariana Souza'),
(6, '3459-0023', 'fixo', '2348', 'Mariana Souza'),
(7, '9312-3144', 'celular', '2348', 'Mariana Souza');

insert into Atividade (id, descricao, peso, dataInicio, dataEntrega, nota, parcial, alunoRA, aluno) values
(1, 'prova matematica', 2, '2025-03-28T18:35:14.142Z', '2025-03-28T18:35:14.142Z', 10, 2, '0918', 'Eduardo Costa'),
(2, 'prova fisica', 3, '2025-03-28T18:55:50.706Z', '2025-03-28T18:35:14.142Z', 9, 2.7, '1886', 'Ingrid Godoy'),
(3, 'prova lp', 4, '2025-03-28T18:56:25.920Z', '2025-03-28T18:35:14.142Z', 5, 2, '1886', 'Ingrid Godoy'),
(4, 'prova matematica', 1, '2025-03-28T18:57:37.157Z', '2025-03-28T18:35:14.142Z', 9, 0.9, '1976', 'Mateus Alves'),
(5, 'prova lp', 1, '2025-03-28T18:58:31.319Z', '2025-03-28T18:35:14.142Z', 10, 1, '2348', 'Mariana Souza');

select * from Aluno;
select * from Telefone;
select * from Atividade;