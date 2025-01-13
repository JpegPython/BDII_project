CREATE TABLE UNIDADE (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    endereco TEXT,
    uf varchar(2),
    cidade TEXT,
    pais varchar(20),
    telefone varchar(12)
);


CREATE TABLE PLANO (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco_mensal DECIMAL(10, 2),
    fidelidade INT,
    unidade_id int,
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
    cpf CHAR(11) NOT NULL,
    unidade_id int,
    data_nascimento DATE,
    endereco VARCHAR(200),
    telefone VARCHAR(20)
);

CREATE TABLE IDENTIFICADOR(
    id INT AUTO_INCREMENT PRIMARY KEY,
    identificacao_id int,
    ativo bool,
    FOREIGN KEY (identificacao_id) REFERENCES IDENTIFICACAO(id)
);

CREATE TABLE FUNCIONARIO (
    id INT AUTO_INCREMENT PRIMARY KEY,
    identificador_id int,
    data_contratacao DATE,
    cargo_id int,
    FOREIGN KEY (identificador_id) REFERENCES IDENTIFICADOR(id),
    FOREIGN KEY (cargo_id) REFERENCES CARGO(id)
);

CREATE TABLE ALUNO (
    id INT PRIMARY KEY,
    identificador_id int,
    data_cadastro DATE,
    plano_id int,
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
    equipamento_id int,
    grupo_muscular_id int,
    FOREIGN KEY (equipamento_id) REFERENCES EQUIPAMENTO(id),
    FOREIGN KEY (grupo_muscular_id) REFERENCES GRUPO_MUSCULAR(id)
);

CREATE TABLE PLANO_TREINO (
    id INT AUTO_INCREMENT PRIMARY KEY,
    exercicio_id INT,
    repeticoes INT,
    series INT,
    carga INT,
    aluno_id INT NOT NULL,
    ativo bool,
    FOREIGN KEY (exercicio_id) REFERENCES EXERCICIO(id),
    FOREIGN KEY (aluno_id) REFERENCES ALUNO(id)
);

CREATE TABLE HISTORICO_TREINO (
    id INT AUTO_INCREMENT PRIMARY KEY ,
    data_inicio DATETIME,
    data_fim DATETIME,
    plano_treino_id int,
    FOREIGN KEY (plano_treino_id) REFERENCES PLANO_TREINO(id)
);

CREATE TABLE RESERVA (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data DATETIME,
    plano_treino_id INT,
    instrutor_id INT,
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
    FOREIGN KEY (aluno_id) REFERENCES ALUNO(id)
);

CREATE TABLE HISTORICO_AVALIACAO(
    id INT AUTO_INCREMENT PRIMARY KEY,
    peso DECIMAL(10,2),
    gordura_corporal DECIMAL(10,2),
    musculo_esqueletico DECIMAL(10,2),
    tipo_dieta varchar(20),
    aluno_id int,
    funcionario_id int,
    FOREIGN KEY (aluno_id) REFERENCES ALUNO(id),
    FOREIGN KEY (funcionario_id) REFERENCES FUNCIONARIO(id)
)