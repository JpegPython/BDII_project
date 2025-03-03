USE sakila;
CREATE TABLE UNIDADE (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    endereco TEXT,
    uf CHAR(2),
    cidade TEXT,
    pais varchar(20),
    telefone varchar(15)
);

CREATE TABLE PLANO (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco_mensal DECIMAL(10, 2),
    fidelidade INT,
    unidade_id int not null,
    FOREIGN KEY (unidade_id) REFERENCES UNIDADE(id)

);

CREATE TABLE CARGO(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(20) NOT NULL,
    descricao text,
    salario DECIMAL(10,2)
);

CREATE TABLE IDENTIFICACAO (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf CHAR(11) NOT NULL UNIQUE,
#     unidade_id int, redundante
    data_nascimento DATE,
    endereco VARCHAR(200),
    telefone VARCHAR(15)
);

CREATE TABLE IDENTIFICADOR(
    id INT AUTO_INCREMENT PRIMARY KEY,
    identificacao_id int not null,
    ativo bool,
    FOREIGN KEY (identificacao_id) REFERENCES IDENTIFICACAO(id)
);

CREATE TABLE FUNCIONARIO (
    id INT AUTO_INCREMENT PRIMARY KEY,
    identificador_id int not null,
    data_contratacao DATE,
    cargo_id int not null,
    FOREIGN KEY (identificador_id) REFERENCES IDENTIFICADOR(id),
    FOREIGN KEY (cargo_id) REFERENCES CARGO(id)
);

CREATE TABLE ALUNO (
    id INT AUTO_INCREMENT PRIMARY KEY,
    identificador_id int not null,
    data_cadastro DATE,
    plano_id int not null,
    FOREIGN KEY (identificador_id) REFERENCES IDENTIFICADOR(id),
    FOREIGN KEY (plano_id) REFERENCES PLANO(id)
);

CREATE TABLE EQUIPAMENTO (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    data_aquisicao DATETIME
);

CREATE TABLE GRUPO_MUSCULAR (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE EXERCICIO (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    equipamento_id int not null,
    grupo_muscular_id int not null,
    FOREIGN KEY (equipamento_id) REFERENCES EQUIPAMENTO(id),
    FOREIGN KEY (grupo_muscular_id) REFERENCES GRUPO_MUSCULAR(id)
);

CREATE TABLE PLANO_TREINO (
    id INT AUTO_INCREMENT PRIMARY KEY,
    exercicio_id INT NOT NULL,
    repeticoes INT,
    series INT,
    carga INT,
    aluno_id INT NOT NULL,
    ativo bool,
    data_inicio DATETIME,
    data_fim DATETIME,
    FOREIGN KEY (exercicio_id) REFERENCES EXERCICIO(id),
    FOREIGN KEY (aluno_id) REFERENCES ALUNO(id)
);

CREATE TABLE RESERVA (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data DATETIME,
    plano_treino_id INT NOT NULL,
    instrutor_id INT NOT NULL,
    FOREIGN KEY (plano_treino_id) REFERENCES PLANO_TREINO(id),
    FOREIGN KEY (instrutor_id) REFERENCES FUNCIONARIO(id)
);

CREATE TABLE HISTORICO_PAGAMENTO (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_pagamento DATE,
    valor DECIMAL(10, 2),
    data_vencimento DATE NOT NULL,
    metodo_pagamento varchar(30),
    aluno_id INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES ALUNO(id),
    FOREIGN KEY (plano_id) REFERENCES PLANO(id)
);

CREATE TABLE DIETA(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome varchar(30),
    objetivo text,
    descricao text,
    tempo_recomendado int
);

CREATE TABLE HISTORICO_AVALIACAO(
    id INT AUTO_INCREMENT PRIMARY KEY,
    peso DECIMAL(10,2),
    gordura_corporal DECIMAL(10,2),
    musculo_esqueletico DECIMAL(10,2),
    tipo_dieta int,
    aluno_id int NOT NULL,
    nutri_id int NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES ALUNO(id),
    FOREIGN KEY (nutri_id) REFERENCES FUNCIONARIO(id),
    FOREIGN KEY (tipo_dieta) REFERENCES DIETA(id)
)
