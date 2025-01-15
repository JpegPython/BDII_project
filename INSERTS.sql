-- Tabela UNIDADE
INSERT INTO UNIDADE (id, nome, endereco, uf, cidade, pais, telefone) VALUES 
(1, 'Unidade Central', 'Rua Principal, 123', 'SP', 'Sao Paulo', 'Brasil', '11999999999'),
(2, 'Unidade Norte', 'Avenida Norte, 456', 'SP', 'Sao Paulo', 'Brasil', '11988888888'),
(3, 'Unidade Sul', 'Rua Sul, 789', 'RJ', 'Rio de Janeiro', 'Brasil', '21977777777');


-- Tabela PLANO
INSERT INTO PLANO (nome, descricao, preco_mensal, fidelidade, unidade_id) VALUES 
('Plano Basic', 'Apenas 1 acesso ', 50.00, 1, 2),
('Plano Basic+', 'Acesso limitado', 99.90, 1, 1),
('Plano Premium', 'Acesso ilimitado', 199.90, 12, 1),
('Plano Família', 'Até 4 dependentes', 299.90, 2, 2),
('Plano Super Premium', 'Acesso ilimitado e direito a Instrutor e Nutri', 250.00, 12, 1);



-- Tabela CARGO
INSERT INTO CARGO (nome, descricao, salario) VALUES 
('Instrutor', 'Responsável por ministrar aulas', 3000.00),  
('Recepcionista', 'Atendimento ao público', 1500.00),
('Gerente', 'Gerenciamento geral', 5000.00),
('Nutricionista', 'Responsável pela avaliação corporal dos alunos', 3200.00);


-- Tabela IDENTIFICACAO
INSERT INTO IDENTIFICACAO (nome, cpf, data_nascimento, endereco, telefone) VALUES
('Joao Silva', '12345678901', '1990-01-01', 'Rua A, 10', '11999990000'),
('Maria Oliveira', '23456789012', '1985-05-05', 'Rua B, 20', '11988880000'),
('Pedro Santos', '34567890123', '1992-03-03', 'Rua C, 30', '11977770000'),
('Ana Costa', '45678901234', '1995-07-07', 'Rua D, 40', '21966660000'),
('Carlos Lima', '56789012345', '1980-09-09', 'Rua E, 50', '11955550000'),
('Dawnson Oliveira', '17701589620', '1995-01-20', 'Rua de Niterói', '21985053125'),
('Fernanda Souza', '67890123456', '1988-02-02', 'Rua F, 60', '21944440000'),
('Ricardo Almeida', '78901234567', '1979-04-04', 'Rua G, 70', '21933330000'),
('Juliana Pereira', '89012345678', '1991-06-06', 'Rua H, 80', '21922220000'),
('André Martins', '90123456789', '1982-08-08', 'Rua I, 90', '21911110000'),
('Lúcia Fernandes', '01234567890', '1994-10-10', 'Rua J, 100', '21900000000'),
('Paulo Azevedo', '23456789013', '1987-11-11', 'Rua K, 110', '11999991111'),
('Cláudia Ribeiro', '34567890124', '1993-12-12', 'Rua L, 120', '11988882222'),
('Gabriel Rocha', '45678901235', '1989-01-13', 'Rua M, 130', '11977773333'),
('Mariana Lima', '56789012346', '1990-03-14', 'Rua N, 140', '11966664444'),
('Fernando Gomes', '67890123457', '1985-05-15', 'Rua O, 150', '11955555555'),
('Patrícia Carvalho', '78901234568', '1992-07-16', 'Rua P, 160', '11944446666'),
('Rafael Sousa', '89012345679', '1996-09-17', 'Rua Q, 170', '11933337777'),
('Carolina Teixeira', '90123456780', '1983-11-18', 'Rua R, 180', '11922228888'),
('Bruno Barros', '01234567891', '1980-02-19', 'Rua S, 190', '11911119999'),
('Alice Santos', '12345678902', '1991-04-20', 'Rua T, 200', '11900001111'),
('Felipe Correia', '23456789018', '1986-06-21', 'Rua U, 210', '11999992222'),
('Elaine Costa', '34567890125', '1994-08-22', 'Rua V, 220', '11988883333'),
('Thiago Silva', '45678901236', '1988-10-23', 'Rua W, 230', '11977774444'),
('Bianca Souza', '56789012347', '1995-12-24', 'Rua X, 240', '11966665555'),
('Vinícius Machado', '67890123458', '1990-03-25', 'Rua Y, 250', '11955556666'),
('Larissa Barbosa', '78901234569', '1993-05-26', 'Rua Z, 260', '11944447777'),
('Daniel Fernandes', '89012345680', '1987-07-27', 'Rua AA, 270', '11933338888'),
('Renata Rocha', '90123456781', '1991-09-28', 'Rua BB, 280', '11922229999'),
('Eduardo Pereira', '01234567892', '1984-11-29', 'Rua CC, 290', '11911110000'),
('Camila Almeida', '12345678903', '1990-01-30', 'Rua DD, 300', '11900001122'),
('Marcelo Ribeiro', '23456789014', '1986-03-31', 'Rua EE, 310', '11999993333'),
('Isabela Correia', '34567890126', '1992-05-01', 'Rua FF, 320', '11988884444'),
('Leandro Sousa', '45678901237', '1989-07-02', 'Rua GG, 330', '11977775555'),
('Juliana Martins', '56789012348', '1985-09-03', 'Rua HH, 340', '11966666666'),
('Rafael Azevedo', '67890123459', '1993-11-04', 'Rua II, 350', '11955557777'),
('Lívia Santos', '78901234570', '1987-02-05', 'Rua JJ, 360', '11944448888'),
('Lucas Gomes', '89012345681', '1995-04-06', 'Rua KK, 370', '11933339999'),
('Mariana Teixeira', '90123456782', '1990-06-07', 'Rua LL, 380', '11922220000'),
('Fernando Barros', '01234567893', '1986-08-08', 'Rua MM, 390', '11911111111'),
('Patrícia Souza', '12345678904', '1989-10-09', 'Rua NN, 400', '11900002222'),
('Felipe Fernandes', '23456789019', '1988-12-10', 'Rua OO, 410', '11999994444'),
('Carolina Barbosa', '34567890127', '1993-03-11', 'Rua PP, 420', '11988885555'),
('Bruno Costa', '45678901238', '1985-05-12', 'Rua QQ, 430', '11977776666'),
('Camila Sousa', '56789012349', '1991-07-13', 'Rua RR, 440', '11966667777'),
('Eduardo Rocha', '67890123460', '1987-09-14', 'Rua SS, 450', '11955558888'),
('Larissa Pereira', '78901234571', '1994-11-15', 'Rua TT, 460', '11944449999'),
('André Martins', '89012345682', '1983-01-16', 'Rua UU, 470', '11933331111');



-- Tabela IDENTIFICADOR
INSERT INTO IDENTIFICADOR (identificacao_id, ativo) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1);


-- Tabela FUNCIONARIO
INSERT INTO FUNCIONARIO (identificador_id, data_contratacao, cargo_id) VALUES 
(1, '2020-01-01', 1), 
(2, '2019-05-01', 2), 
(3, '2019-05-01', 3), 
(4, '2021-06-01', 1), 
(5, '2022-07-01', 2), 
(6, '2025-01-01', 4), 
(7, '2020-02-01', 1), 
(8, '2019-06-01', 2), 
(9, '2019-06-01', 3), 
(10, '2021-07-01', 1), 
(11, '2022-08-01', 2), 
(12, '2025-02-01', 4), 
(13, '2020-03-01', 1), 
(14, '2019-07-01', 2), 
(15, '2019-07-01', 3), 
(16, '2021-08-01', 1), 
(17, '2022-09-01', 2), 
(18, '2025-03-01', 4), 
(19, '2020-04-01', 1), 
(20, '2019-08-01', 2), 
(21, '2019-08-01', 3), 
(22, '2021-09-01', 1), 
(23, '2022-10-01', 2), 
(24, '2025-04-01', 4), 
(25, '2020-05-01', 1);

-- Tabela ALUNO
INSERT INTO ALUNO (identificador_id, data_cadastro, plano_id) VALUES 
(1, '2023-01-01', 2), 
(2, '2023-02-01', 4), 
(3, '2023-03-01', 3), 
(4, '2023-04-01', 1), 
(5, '2023-05-01', 1), 
(6, '2023-06-01', 2), 
(7, '2023-07-01', 3), 
(8, '2023-08-01', 4), 
(9, '2023-09-01', 1), 
(10, '2023-10-01', 2), 
(11, '2023-11-01', 3), 
(12, '2023-12-01', 4), 
(13, '2024-01-01', 1), 
(14, '2024-02-01', 2), 
(15, '2024-03-01', 3), 
(16, '2024-04-01', 4), 
(17, '2024-05-01', 1), 
(18, '2024-06-01', 2), 
(19, '2024-07-01', 3), 
(20, '2024-08-01', 4), 
(21, '2024-09-01', 1), 
(22, '2024-10-01', 2), 
(23, '2024-11-01', 3), 
(24, '2024-12-01', 4), 
(25, '2025-01-01', 1), 
(26, '2025-02-01', 2), 
(27, '2025-03-01', 3), 
(28, '2025-04-01', 4), 
(29, '2025-05-01', 1), 
(30, '2025-06-01', 2), 
(31, '2025-07-01', 3), 
(32, '2025-08-01', 4), 
(33, '2025-09-01', 1), 
(34, '2025-10-01', 2), 
(35, '2025-11-01', 3), 
(36, '2025-12-01', 4), 
(37, '2026-01-01', 1), 
(38, '2026-02-01', 2), 
(39, '2026-03-01', 3), 
(40, '2026-04-01', 4), 
(41, '2026-05-01', 1), 
(42, '2026-06-01', 2), 
(43, '2026-07-01', 3), 
(44, '2026-08-01', 4), 
(45, '2026-09-01', 1), 
(46, '2026-10-01', 2), 
(47, '2026-11-01', 3), 
(48, '2026-12-01', 4);


-- Tabela EQUIPAMENTO
INSERT INTO EQUIPAMENTO (nome, descricao, data_aquisicao) VALUES
('Cadeira Extensora', 'Equipamento para extensões de perna', '2022-01-01 00:00:00'),
('Pulley', 'Equipamento para atividades diversas', '2022-02-01 00:00:00'),
('Halter', 'Equipamento para musculação', '2022-03-01 00:00:00'),
('Supino', 'Equipamento para supino', '2022-04-01 00:00:00'),
('Leg Press', 'Equipamento para leg press', '2022-05-01 00:00:00'),
('Remo', 'Equipamento para treino de remo', '2022-06-01 00:00:00'),
('Esteira', 'Equipamento para caminhada e corrida', '2022-07-01 00:00:00'),
('Bicicleta Ergométrica', 'Equipamento para simulação de pedalada', '2022-08-01 00:00:00'),
('Elíptico', 'Equipamento para treino cardiovascular', '2022-09-01 00:00:00'),
('Multi-estação', 'Equipamento para exercícios variados', '2022-10-01 00:00:00'),
('Paralelas', 'Equipamento para exercício de braços', '2022-11-01 00:00:00'),
('Roda de Abdominal', 'Equipamento para treino de abdômen', '2022-12-01 00:00:00'),
('Puxador Vertical', 'Equipamento para treino de costas', '2023-01-01 00:00:00'),
('Puxador Horizontal', 'Equipamento para treino de dorsais', '2023-02-01 00:00:00'),
('Banco Reto', 'Equipamento para exercícios diversos', '2023-03-01 00:00:00'),
('Banco Inclinado', 'Equipamento para supino inclinado', '2023-04-01 00:00:00'),
('Banco Declinado', 'Equipamento para supino declinado', '2023-05-01 00:00:00'),
('Corda Naval', 'Equipamento para treino funcional', '2023-06-01 00:00:00'),
('TRX', 'Equipamento para treino de suspensão', '2023-07-01 00:00:00'),
('Bosu', 'Equipamento para treino de equilíbrio', '2023-08-01 00:00:00'),
('Medicine Ball', 'Equipamento para treino de força', '2023-09-01 00:00:00'),
('Rolo de Espuma', 'Equipamento para liberação miofascial', '2023-10-01 00:00:00'),
('Barra Fixa', 'Equipamento para exercício de puxada', '2023-11-01 00:00:00'),
('Barra Paralela', 'Equipamento para flexões de braço', '2023-12-01 00:00:00'),
('Kettlebell', 'Equipamento para treino de força', '2024-01-01 00:00:00'),
('Anilha', 'Equipamento para musculação', '2024-02-01 00:00:00'),
('Roda de Yoga', 'Equipamento para alongamento', '2024-03-01 00:00:00'),
('Barra Olímpica', 'Equipamento para levantamento de peso', '2024-04-01 00:00:00'),
('Disco de Equilíbrio', 'Equipamento para treino de equilíbrio', '2024-05-01 00:00:00'),
('Step', 'Equipamento para treino de cardio', '2024-06-01 00:00:00'),
('Jump', 'Equipamento para treino de alta intensidade', '2024-07-01 00:00:00'),
('Bandas Elásticas', 'Equipamento para resistência', '2024-08-01 00:00:00'),
('Roda Abdominal', 'Equipamento para treino de core', '2024-09-01 00:00:00'),
('Coletes de Peso', 'Equipamento para aumento de carga', '2024-10-01 00:00:00'),
('Espaldar', 'Equipamento para alongamento', '2024-11-01 00:00:00'),
('Estação de Musculação', 'Equipamento multifuncional', '2024-12-01 00:00:00');


-- Tabela GRUPO_MUSCULAR
INSERT INTO GRUPO_MUSCULAR (nome) VALUES
('Quadríceps'),
('Tríceps'),
('Bíceps'),
('Dorsal'),
('Peitoral'),
('Abdômen'),
('Glúteos'),
('Panturrilha'),
('Ombros'),
('Trapézio'),
('Coxa'),
('Antebraço'),
('Lombar'),
('Pescoço'),
('Adutores'),
('Isquiotibiais'),
('Fáscia Toracolombar'),
('Serrátil Anterior'),
('Intercostais'),
('Eretor da Espinha'),
('Romboides'),
('Rotadores Externos'),
('Rotadores Internos'),
('Sóleo'),
('Sartório');


-- Tabela EXERCICIO
INSERT INTO EXERCICIO (nome, descricao, equipamento_id, grupo_muscular_id) VALUES
('Extensão de Perna', 'Trabalha quadríceps', 1, 1),
('Tríceps Pulley', 'Trabalha tríceps', 2, 2),
('Rosca Direta', 'Trabalha bíceps', 3, 3),
('Remada no Pulley', 'Trabalha dorsal parte central', 2, 4),
('Supino Reto', 'Trabalha peitoral', 2, 5),
('Flexão de Braço', 'Trabalha peitoral', 3, 5),
('Agachamento Livre', 'Trabalha glúteos e quadríceps', 1, 7),
('Elevação de Panturrilha', 'Trabalha panturrilha', 2, 8),
('Desenvolvimento com Halteres', 'Trabalha ombros', 3, 9),
('Encolhimento de Ombros', 'Trabalha trapézio', 3, 10),
('Leg Press', 'Trabalha coxa e glúteos', 1, 11),
('Rosca Inversa', 'Trabalha antebraço', 3, 12),
('Levantamento Terra', 'Trabalha lombar', 3, 13),
('Encostamento', 'Trabalha pescoço', 2, 14),
('Abdução de Coxa', 'Trabalha adutores', 1, 15),
('Flexora de Pernas', 'Trabalha isquiotibiais', 1, 16),
('Pulldown', 'Trabalha dorsal', 2, 4),
('Elevação Lateral', 'Trabalha ombros', 3, 9),
('Cadeira Abdutora', 'Trabalha abdutores', 1, 15),
('Crucifixo', 'Trabalha peitoral', 2, 5),
('Mesa Flexora', 'Trabalha isquiotibiais', 1, 16),
('Extensão de Tríceps', 'Trabalha tríceps', 2, 2),
('Remada Curvada', 'Trabalha dorsal', 3, 4),
('Crossover', 'Trabalha peitoral', 2, 5),
('Flexão Lateral', 'Trabalha abdômen', 3, 6),
('Elevação Frontal', 'Trabalha ombros', 3, 9),
('Desenvolvimento com Barra', 'Trabalha ombros', 3, 9),
('Rosca Concentrada', 'Trabalha bíceps', 3, 3),
('Avanço', 'Trabalha glúteos e quadríceps', 1, 7),
('Cadeira Adutora', 'Trabalha adutores', 1, 15),
('Supino Inclinado', 'Trabalha peitoral', 2, 5),
('Pullover', 'Trabalha peitoral', 2, 5),
('Abdominal Infra', 'Trabalha abdômen', 3, 6),
('Elevação do Tronco', 'Trabalha abdômen', 3, 6),
('Flexão com Rotação', 'Trabalha abdômen e oblíquos', 3, 6),
('Remada Serrote', 'Trabalha dorsal', 3, 4),
('Elevação de Quadril', 'Trabalha glúteos', 1, 7),
('Extensão Lombar', 'Trabalha lombar', 1, 13),
('Abdominal com Roda', 'Trabalha abdômen', 3, 6),
('Remada Alta', 'Trabalha ombros', 2, 9),
('Crucifixo Inverso', 'Trabalha dorsal', 3, 4),
('Paralelas', 'Trabalha peitoral e tríceps', 3, 2),
('Agachamento Hack', 'Trabalha glúteos e quadríceps', 1, 7),
('Flexora Standing', 'Trabalha isquiotibiais', 1, 16),
('Extensão com Corda', 'Trabalha tríceps', 2, 2),
('Supino Declinado', 'Trabalha peitoral', 2, 5),
('Flexão Explosiva', 'Trabalha peitoral e tríceps', 3, 5),
('Puxada Alta', 'Trabalha dorsal', 2, 4),
('Elevação Pélvica', 'Trabalha glúteos', 1, 7),
('Twist Abdominal', 'Trabalha abdômen e oblíquos', 3, 6);


-- Tabela PLANO_TREINO
INSERT INTO PLANO_TREINO (exercicio_id, repeticoes, series, carga, aluno_id, ativo) VALUES
(1, 15, 3, 20, 1, 1),
(2, 12, 3, 40, 2, 1),
(3, 10, 4, 15, 3, 1),
(2, 12, 3, 30, 1, 1),
(3, 12, 3, 25, 2, 1),
(4, 15, 3, 20, 4, 1),
(5, 12, 3, 40, 5, 1),
(6, 10, 4, 15, 6, 1),
(7, 12, 3, 30, 7, 1),
(8, 12, 3, 25, 8, 1),
(9, 15, 3, 20, 9, 1),
(10, 12, 3, 40, 10, 1),
(11, 10, 4, 15, 11, 1),
(12, 12, 3, 30, 12, 1),
(13, 12, 3, 25, 13, 1),
(14, 15, 3, 20, 14, 1),
(15, 12, 3, 40, 15, 1),
(16, 10, 4, 15, 16, 1),
(17, 12, 3, 30, 17, 1),
(18, 12, 3, 25, 18, 1),
(19, 15, 3, 20, 19, 1),
(20, 12, 3, 40, 20, 1),
(21, 10, 4, 15, 21, 1),
(22, 12, 3, 30, 22, 1),
(23, 12, 3, 25, 23, 1),
(24, 15, 3, 20, 24, 1),
(25, 12, 3, 40, 25, 1),
(26, 10, 4, 15, 26, 1),
(27, 12, 3, 30, 27, 1),
(28, 12, 3, 25, 28, 1),
(29, 15, 3, 20, 29, 1),
(30, 12, 3, 40, 30, 1),
(31, 10, 4, 15, 31, 1),
(32, 12, 3, 30, 32, 1),
(33, 12, 3, 25, 33, 1),
(34, 15, 3, 20, 34, 1),
(35, 12, 3, 40, 35, 1),
(36, 10, 4, 15, 36, 1),
(37, 12, 3, 30, 37, 1),
(38, 12, 3, 25, 38, 1),
(39, 15, 3, 20, 39, 1),
(40, 12, 3, 40, 40, 1),
(41, 10, 4, 15, 41, 1),
(42, 12, 3, 30, 42, 1),
(43, 12, 3, 25, 43, 1),
(44, 15, 3, 20, 44, 1),
(45, 12, 3, 40, 45, 1),
(46, 10, 4, 15, 46, 1),
(47, 12, 3, 30, 47, 1),
(48, 12, 3, 25, 48, 1);


-- Tabela HISTORICO_TREINO
INSERT INTO HISTORICO_TREINO (data_inicio, data_fim, plano_treino_id) VALUES 
('2023-01-01 10:00:00', '2023-01-01 11:00:00', 1),
('2023-02-01 15:00:00', '2023-02-01 16:00:00', 2),
('2023-03-01 10:00:00', '2023-03-01 11:00:00', 3),
('2023-04-01 15:00:00', '2023-04-01 16:00:00', 4),
('2023-05-01 10:00:00', '2023-05-01 11:00:00', 5),
('2023-06-01 15:00:00', '2023-06-01 16:00:00', 6),
('2023-07-01 10:00:00', '2023-07-01 11:00:00', 7),
('2023-08-01 15:00:00', '2023-08-01 16:00:00', 8),
('2023-09-01 10:00:00', '2023-09-01 11:00:00', 9),
('2023-10-01 15:00:00', '2023-10-01 16:00:00', 10),
('2023-11-01 10:00:00', '2023-11-01 11:00:00', 11),
('2023-12-01 15:00:00', '2023-12-01 16:00:00', 12),
('2024-01-01 10:00:00', '2024-01-01 11:00:00', 13),
('2024-02-01 15:00:00', '2024-02-01 16:00:00', 14),
('2024-03-01 10:00:00', '2024-03-01 11:00:00', 15),
('2024-04-01 15:00:00', '2024-04-01 16:00:00', 16),
('2024-05-01 10:00:00', '2024-05-01 11:00:00', 17),
('2024-06-01 15:00:00', '2024-06-01 16:00:00', 18),
('2024-07-01 10:00:00', '2024-07-01 11:00:00', 19),
('2024-08-01 15:00:00', '2024-08-01 16:00:00', 20),
('2024-09-01 10:00:00', '2024-09-01 11:00:00', 21),
('2024-10-01 15:00:00', '2024-10-01 16:00:00', 22),
('2024-11-01 10:00:00', '2024-11-01 11:00:00', 23),
('2024-12-01 15:00:00', '2024-12-01 16:00:00', 24),
('2025-01-01 10:00:00', '2025-01-01 11:00:00', 25);


-- Tabela RESERVA
INSERT INTO RESERVA (data, plano_treino_id, instrutor_id) VALUES
('2025-01-09 20:44:45', 1, 1),
('2025-01-10 14:30:00', 2, 2),
('2025-01-11 16:00:00', 3, 3),
('2025-01-12 10:00:00', 4, 4),
('2025-01-13 18:00:00', 5, 5),
('2025-01-14 09:00:00', 6, 1),
('2025-01-15 15:00:00', 7, 2),
('2025-01-16 11:00:00', 8, 3),
('2025-01-17 17:00:00', 9, 4),
('2025-01-18 13:00:00', 10, 5),
('2025-01-19 19:00:00', 11, 1),
('2025-01-20 08:00:00', 12, 2),
('2025-01-21 14:00:00', 13, 3),
('2025-01-22 10:00:00', 14, 4),
('2025-01-23 16:00:00', 15, 5),
('2025-01-24 12:00:00', 16, 1),
('2025-01-25 18:00:00', 17, 2),
('2025-01-26 09:00:00', 18, 3),
('2025-01-27 15:00:00', 19, 4),
('2025-01-28 11:00:00', 20, 5),
('2025-01-29 17:00:00', 21, 1),
('2025-01-30 08:00:00', 22, 2),
('2025-01-31 14:00:00', 23, 3),
('2025-02-01 10:00:00', 24, 4),
('2025-02-02 16:00:00', 25, 5),
('2025-02-03 12:00:00', 26, 1),
('2025-02-04 18:00:00', 27, 2),
('2025-02-05 09:00:00', 28, 3),
('2025-02-06 15:00:00', 29, 4),
('2025-02-07 11:00:00', 30, 5),
('2025-02-08 17:00:00', 31, 1),
('2025-02-09 08:00:00', 32, 2),
('2025-02-10 14:00:00', 33, 3),
('2025-02-11 10:00:00', 34, 4),
('2025-02-12 16:00:00', 35, 5),
('2025-02-13 12:00:00', 36, 1),
('2025-02-14 18:00:00', 37, 2),
('2025-02-15 09:00:00', 38, 3),
('2025-02-16 15:00:00', 39, 4),
('2025-02-17 11:00:00', 40, 5);


-- Tabela HISTORICO_PAGAMENTO
INSERT INTO HISTORICO_PAGAMENTO (data_pagamento, valor, data_vencimento, metodo_pagamento, aluno_id) VALUES
('2024-12-05', 199.90, '2024-12-10', 'Cartão', 1),
('2025-01-02', 99.90, '2025-01-10', 'Boleto', 2),
('2025-01-01', 199.90, '2025-01-10', 'Pix', 1),
('2024-11-10', 299.90, '2024-11-15', 'Cartão', 3),
('2024-10-05', 50.00, '2024-10-10', 'Boleto', 4),
('2024-09-12', 250.00, '2024-09-17', 'Pix', 5),
('2024-08-15', 199.90, '2024-08-20', 'Cartão', 6),
('2024-07-19', 99.90, '2024-07-24', 'Boleto', 7),
('2024-06-22', 299.90, '2024-06-27', 'Pix', 8),
('2024-05-25', 50.00, '2024-05-30', 'Cartão', 9),
('2024-04-28', 250.00, '2024-05-03', 'Boleto', 10),
('2024-03-31', 199.90, '2024-04-05', 'Pix', 11),
('2024-02-03', 99.90, '2024-02-08', 'Cartão', 12),
('2024-01-06', 299.90, '2024-01-11', 'Boleto', 13),
('2023-12-09', 50.00, '2023-12-14', 'Pix', 14),
('2023-11-12', 250.00, '2023-11-17', 'Cartão', 15),
('2023-10-15', 199.90, '2023-10-20', 'Boleto', 16),
('2023-09-18', 99.90, '2023-09-23', 'Pix', 17),
('2023-08-21', 299.90, '2023-08-26', 'Cartão', 18),
('2023-07-24', 50.00, '2023-07-29', 'Boleto', 19),
('2023-06-27', 250.00, '2023-07-02', 'Pix', 20),
('2023-05-30', 199.90, '2023-06-04', 'Cartão', 21),
('2023-05-03', 99.90, '2023-05-08', 'Boleto', 22),
('2023-04-06', 299.90, '2023-04-11', 'Pix', 23),
('2023-03-09', 50.00, '2023-03-14', 'Cartão', 24),
('2023-02-12', 250.00, '2023-02-17', 'Boleto', 25),
('2023-01-15', 199.90, '2023-01-20', 'Pix', 26),
('2022-12-18', 99.90, '2022-12-23', 'Cartão', 27),
('2022-11-21', 299.90, '2022-11-26', 'Boleto', 28),
('2022-10-24', 50.00, '2022-10-29', 'Pix', 29),
('2022-09-27', 250.00, '2022-10-02', 'Cartão', 30),
('2022-08-30', 199.90, '2022-09-04', 'Boleto', 31),
('2022-08-03', 99.90, '2022-08-08', 'Pix', 32),
('2022-07-06', 299.90, '2022-07-11', 'Cartão', 33),
('2022-06-09', 50.00, '2022-06-14', 'Boleto', 34),
('2022-05-12', 250.00, '2022-05-17', 'Pix', 35),
('2022-04-15', 199.90, '2022-04-20', 'Cartão', 36),
('2022-03-18', 99.90, '2022-03-23', 'Boleto', 37),
('2022-02-21', 299.90, '2022-02-26', 'Pix', 38),
('2022-01-24', 50.00, '2022-01-29', 'Cartão', 39),
('2021-12-27', 250.00, '2022-01-02', 'Boleto', 40),
('2021-11-30', 199.90, '2021-12-05', 'Pix', 41),
('2021-10-03', 99.90, '2021-10-08', 'Cartão', 42),
('2021-09-06', 299.90, '2021-09-11', 'Boleto', 43),
('2021-08-09', 50.00, '2021-08-14', 'Pix', 44),
('2021-07-12', 250.00, '2021-07-17', 'Cartão', 45),
('2021-06-15', 199.90, '2021-06-20', 'Boleto', 46),
('2021-05-18', 99.90, '2021-05-23', 'Pix', 47),
('2021-04-21', 299.90, '2021-04-26', 'Cartão', 48),
('2024-12-18', 99.90, '2025-02-23', 'Pix', 47),
('2024-08-15', 199.90, '2025-01-20', 'Cartão', 7);


-- Tabela HISTORICO_PAGAMENTO (valores atrasados e vencidos
INSERT INTO  HISTORICO_PAGAMENTO (valor, data_vencimento, metodo_pagamento, aluno_id) VALUES
(99.90, '2025-01-10', 'Boleto', 2),
(299.90, '2024-12-31', 'PIX', 23),
(99.90, '2025-02-23', 'Pix', 47),
(199.90, '2025-01-20', 'Cartão', 7);

-- Tabela HISTORICO_AVALIACAO
INSERT INTO HISTORICO_AVALIACAO (peso, gordura_corporal, musculo_esqueletico, tipo_dieta, aluno_id, funcionario_id) VALUES
(60.70, 15.70, 18.90, 'cutting', 2, 6),
(70.80, 12.50, 24.30, 'bulking', 3, 7),
(75.60, 14.20, 26.10, 'cutting', 4, 8),
(68.40, 10.90, 22.50, 'maintenance', 5, 9),
(80.20, 17.50, 28.40, 'bulking', 6, 10),
(55.30, 8.70, 16.40, 'cutting', 7, 11),
(90.50, 20.30, 30.70, 'bulking', 8, 12),
(62.90, 13.40, 20.20, 'maintenance', 9, 13),
(65.40, 11.00, 21.50, 'cutting', 10, 14),
(70.30, 18.20, 23.90, 'bulking', 11, 15),
(85.40, 19.50, 29.80, 'cutting', 12, 16),
(58.60, 9.80, 17.60, 'maintenance', 13, 17),
(64.70, 12.20, 21.10, 'cutting', 14, 18),
(76.80, 16.30, 27.90, 'bulking', 15, 19),
(60.20, 14.10, 19.40, 'maintenance', 16, 20),
(78.90, 18.50, 28.10, 'cutting', 17, 21),
(63.40, 10.70, 20.30, 'bulking', 18, 22),
(85.20, 19.20, 29.70, 'maintenance', 19, 23),
(56.50, 9.10, 16.80, 'cutting', 20, 24),
(90.30, 22.40, 31.90, 'bulking', 21, 25),
(68.70, 13.20, 22.80, 'maintenance', 22, 1),
(72.10, 11.80, 24.50, 'cutting', 23, 2),
(77.40, 15.60, 25.90, 'bulking', 24, 3),
(59.80, 10.30, 18.70, 'maintenance', 25, 4),
(65.90, 12.70, 21.90, 'cutting', 26, 5),
(80.40, 16.80, 27.50, 'bulking', 27, 6),
(61.20, 11.40, 19.30, 'maintenance', 28, 7),
(78.10, 15.10, 26.30, 'cutting', 29, 8),
(83.20, 17.80, 28.90, 'bulking', 30, 9),
(57.90, 9.60, 17.20, 'maintenance', 31, 10),
(66.30, 13.00, 22.00, 'cutting', 32, 11),
(79.50, 16.60, 27.80, 'bulking', 33, 12),
(60.90, 10.50, 19.00, 'maintenance', 34, 13),
(82.70, 18.40, 29.50, 'cutting', 35, 14),
(55.80, 8.90, 16.30, 'bulking', 36, 15),
(87.60, 20.60, 30.30, 'maintenance', 37, 16),
(62.20, 11.70, 20.60, 'cutting', 38, 17),
(75.10, 14.80, 25.40, 'bulking', 39, 18),
(67.80, 12.10, 22.90, 'maintenance', 40, 19),
(81.90, 17.10, 28.50, 'cutting', 41, 20),
(58.10, 9.40, 17.40, 'bulking', 42, 21),
(70.50, 13.50, 23.60, 'maintenance', 43, 22),
(78.20, 15.90, 26.70, 'cutting', 44, 23),
(85.30, 19.00, 29.10, 'bulking', 45, 24),
(61.50, 10.20, 20.00, 'maintenance', 46, 25),
(77.60, 16.00, 27.20, 'cutting', 47, 1),
(63.80, 11.20, 21.40, 'bulking', 48, 2),
(82.10, 18.70, 29.20, 'bulking', 1, 3);

