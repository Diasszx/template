BEGIN TRANSACTION;

CREATE TABLE categoria(
    id INTEGER PRIMARY KEY NOT NULL,
    nome VARCHAR(200)
)

INSERT INTO categoria VALUES(1,'Frequente');
INSERT INTO categoria VALUES(2,'Casual');
INSERT INTO categoria VALUES(3,'Varejista');

CREATE TABLE estado(
    id INTEGER PRIMARY KEY NOT NULL,
    nome VARCHAR(200)
);

INSERT INTO estado VALUES(1,'RS');
INSERT INTO estado VALUES(2,'SP');

CREATE TABLE cidade(
    id INTEGER PRIMARY KEY NOT NULL,
    nome VARCHAR(200),
    estado_id INTEGER NOT NULL,
    FOREIGN KEY(estado_id) REFERENCES estado(id)
);

INSERT INTO cidade VALUES(1,'Lajeado',1);
INSERT INTO cidade VALUES(2,'Porto Alegre',1);
INSERT INTO cidade VALUES(3,'Caxias do Sul',1);
INSERT INTO cidade VALUES(4,'São Paulo',2);
INSERT INTO cidade VALUES(5,'Osasco',2);

CREATE TABLE habilidade(
    id INTEGER PRIMARY KEY NOT NULL,
    nome VARCHAR(200)
);

INSERT INTO habilidade VALUES(1,'Leitura');
INSERT INTO habilidade VALUES(2,'Escrita');
INSERT INTO habilidade VALUES(3,'Comunicação');
INSERT INTO habilidade VALUES(4,'Criatividade');
INSERT INTO habilidade VALUES(5,'Relações');
INSERT INTO habilidade VALUES(6,'Organização');
INSERT INTO habilidade VALUES(7,'Liderança');

CREATE TABLE cliente(
    id INTEGER PRIMARY KEY NOT NULL,
    nome VARCHAR(200)
    endereco VARCHAR(200),
    telefone VARCHAR(200),
    nascimento DATE,
    situacao CHAR(1),
    categoria_id INTEGER NOT NULL,
    cidade_id INTEGER NOT NULL,
    created_at timestamp,
    updated_at timestamp,
    FOREIGN KEY(cidade_id) REFERENCES cidade(id),
    FOREIGN KEY(categoria_id) REFERENCES categoria(id)
);

INSERT INTO cliente (id, nome, endereco, telefone, nascimento, situacao, categoria_id, cidade_id, created_at, updated_at) VALUES
(1, 'João Silva', 'Rua A, 123', '(11) 9999-8888', '1990-05-15', 'A', 1, 1, NOW(), NOW()),
(2, 'Maria Oliveira', 'Rua B, 456', '(11) 9999-7777', '1985-08-20', 'A', 2, 2, NOW(), NOW()),
(3, 'Pedro Souza', 'Rua C, 789', '(11) 9999-6666', '1992-03-10', 'I', 3, 3, NOW(), NOW()),
(4, 'Ana Costa', 'Rua D, 101', '(11) 9999-5555', '1988-12-25', 'A', 4, 4, NOW(), NOW()),
(5, 'Carlos Rocha', 'Rua E, 202', '(11) 9999-4444', '1995-07-30', 'A', 5, 5, NOW(), NOW()),
(6, 'Fernanda Lima', 'Rua F, 303', '(11) 9999-3333', '1991-09-05', 'I', 6, 6, NOW(), NOW()),
(7, 'Ricardo Santos', 'Rua G, 404', '(11) 9999-2222', '1987-11-12', 'A', 7, 7, NOW(), NOW()),
(8, 'Juliana Pereira', 'Rua H, 505', '(11) 9999-1111', '1993-04-18', 'A', 8, 8, NOW(), NOW()),
(9, 'Lucas Almeida', 'Rua I, 606', '(11) 9999-0000', '1994-06-22', 'I', 9, 9, NOW(), NOW()),
(10, 'Patrícia Gomes', 'Rua J, 707', '(11) 9999-9999', '1989-02-28', 'A', 10, 10, NOW(), NOW()),
(11, 'Marcos Ribeiro', 'Rua K, 808', '(11) 8888-8888', '1990-01-01', 'A', 1, 1, NOW(), NOW()),
(12, 'Camila Martins', 'Rua L, 909', '(11) 8888-7777', '1986-03-15', 'I', 2, 2, NOW(), NOW()),
(13, 'Gustavo Ferreira', 'Rua M, 1010', '(11) 8888-6666', '1992-05-20', 'A', 3, 3, NOW(), NOW()),
(14, 'Isabela Cardoso', 'Rua N, 1111', '(11) 8888-5555', '1988-07-25', 'A', 4, 4, NOW(), NOW()),
(15, 'Roberto Araújo', 'Rua O, 1212', '(11) 8888-4444', '1995-09-30', 'I', 5, 5, NOW(), NOW()),
(16, 'Tatiane Dias', 'Rua P, 1313', '(11) 8888-3333', '1991-11-05', 'A', 6, 6, NOW(), NOW()),
(17, 'Fábio Correia', 'Rua Q, 1414', '(11) 8888-2222', '1987-12-12', 'A', 7, 7, NOW(), NOW()),
(18, 'Vanessa Nunes', 'Rua R, 1515', '(11) 8888-1111', '1993-02-18', 'I', 8, 8, NOW(), NOW()),
(19, 'Diego Barbosa', 'Rua S, 1616', '(11) 8888-0000', '1994-04-22', 'A', 9, 9, NOW(), NOW()),
(20, 'Sandra Monteiro', 'Rua T, 1717', '(11) 8888-9999', '1989-06-28', 'A', 10, 10, NOW(), NOW()),
(21, 'Bruno Carvalho', 'Rua U, 1818', '(11) 7777-8888', '1990-08-01', 'I', 1, 1, NOW(), NOW()),
(22, 'Larissa Pinto', 'Rua V, 1919', '(11) 7777-7777', '1985-10-15', 'A', 2, 2, NOW(), NOW()),
(23, 'Rafael Macedo', 'Rua W, 2020', '(11) 7777-6666', '1992-12-20', 'A', 3, 3, NOW(), NOW()),
(24, 'Amanda Castro', 'Rua X, 2121', '(11) 7777-5555', '1988-02-25', 'I', 4, 4, NOW(), NOW()),
(25, 'Eduardo Dantas', 'Rua Y, 2222', '(11) 7777-4444', '1995-04-30', 'A', 5, 5, NOW(), NOW()),
(26, 'Cristina Moreira', 'Rua Z, 2323', '(11) 7777-3333', '1991-06-05', 'A', 6, 6, NOW(), NOW()),
(27, 'Alexandre Lopes', 'Rua AA, 2424', '(11) 7777-2222', '1987-08-12', 'I', 7, 7, NOW(), NOW()),
(28, 'Daniela Freitas', 'Rua BB, 2525', '(11) 7777-1111', '1993-10-18', 'A', 8, 8, NOW(), NOW()),
(29, 'Thiago Azevedo', 'Rua CC, 2626', '(11) 7777-0000', '1994-12-22', 'A', 9, 9, NOW(), NOW()),
(30, 'Mariana Gonçalves', 'Rua DD, 2727', '(11) 7777-9999', '1989-01-28', 'I', 10, 10, NOW(), NOW()),
(31, 'Paulo Vieira', 'Rua EE, 2828', '(11) 6666-8888', '1990-03-01', 'A', 1, 1, NOW(), NOW()),
(32, 'Helena Neves', 'Rua FF, 2929', '(11) 6666-7777', '1985-05-15', 'A', 2, 2, NOW(), NOW()),
(33, 'Rodrigo Machado', 'Rua GG, 3030', '(11) 6666-6666', '1992-07-20', 'I', 3, 3, NOW(), NOW()),
(34, 'Beatriz Rios', 'Rua HH, 3131', '(11) 6666-5555', '1988-09-25', 'A', 4, 4, NOW(), NOW()),
(35, 'André Peixoto', 'Rua II, 3232', '(11) 6666-4444', '1995-11-30', 'A', 5, 5, NOW(), NOW()),
(36, 'Luciana Tavares', 'Rua JJ, 3333', '(11) 6666-3333', '1991-01-05', 'I', 6, 6, NOW(), NOW()),
(37, 'Marcelo Guimarães', 'Rua KK, 3434', '(11) 6666-2222', '1987-03-12', 'A', 7, 7, NOW(), NOW()),
(38, 'Renata Duarte', 'Rua LL, 3535', '(11) 6666-1111', '1993-05-18', 'A', 8, 8, NOW(), NOW()),
(39, 'Felipe Campos', 'Rua MM, 3636', '(11) 6666-0000', '1994-07-22', 'I', 9, 9, NOW(), NOW()),
(40, 'Viviane Rezende', 'Rua NN, 3737', '(11) 6666-9999', '1989-09-28', 'A', 10, 10, NOW(), NOW());

CREATE TABLE contato (
    id INTEGER PRIMARY KEY NOT NULL,
    tipo VARCHAR(200),
    valor VARCHAR(200),
    cliente_id INTEGER NOT NULL,
    FOREIGN KEY(cliente_id) REFERENCES cliente(id)
);

INSERT INTO contato(id, tipo, valor, cliente_id) VALUES
(1,'phone','78 2343-4545',4)
(1,'phone','78 9494-0404',4)
(1,'phone','78 2343-4545',4)
(1,'phone','78 9494-0404',4)
(1,'face','www.fb.com/john',1)
(1,'twitter','twitter.com/mary',1)
(1,'email','andrei@gmail.com',1)

CREATE TABLE cliente_habilidade(
    id INTEGER PRIMARY KEY NOT NULL,
    cliente_id INTEGER NOT NULL,
    habilidade_id INTEGER NOT NULL,
    FOREIGN KEY(cliente_id) REFERENCES(id),
    FOREIGN KEY(habilidade_id) REFERENCES(id)
);

INSERT INTO cliente_habilidade(id, cliente_id, habilidade_id) VALUES
(61,4,1);
(62,4,2);
(66,6,5);
(67,6,7);
(68,1,1);
(69,1,2);
(70,1,4);

CREATE TABLE produto(
    id INTEGER PRIMARY KEY NOT NULL,
    descricao VARCHAR(200),
    estoque float,
    preco_venda float,
    unidade VARCHAR(200),
    local_foto text
);

INSERT INTO produto (id, descricao, estoque, preco_venda, unidade, local_foto) VALUES
(1, 'Arroz Integral', 100.5, 8.99, 'kg', '/fotos/arroz_integral.jpg'),
(2, 'Feijão Carioca', 200.0, 6.50, 'kg', '/fotos/feijao_carioca.jpg'),
(3, 'Açúcar Refinado', 150.0, 3.99, 'kg', '/fotos/acucar_refinado.jpg'),
(4, 'Óleo de Soja', 80.0, 7.20, 'litro', '/fotos/oleo_soja.jpg'),
(5, 'Leite Integral', 120.0, 4.50, 'litro', '/fotos/leite_integral.jpg'),
(6, 'Café em Grãos', 90.0, 12.99, 'kg', '/fotos/cafe_graos.jpg'),
(7, 'Macarrão Espaguete', 300.0, 3.20, 'kg', '/fotos/macarrao_espaguete.jpg'),
(8, 'Molho de Tomate', 250.0, 2.99, 'unidade', '/fotos/molho_tomate.jpg'),
(9, 'Sabão em Pó', 180.0, 15.90, 'kg', '/fotos/sabao_po.jpg'),
(10, 'Detergente Líquido', 200.0, 2.50, 'litro', '/fotos/detergente_liquido.jpg'),
(11, 'Papel Higiênico', 500.0, 12.00, 'unidade', '/fotos/papel_higienico.jpg'),
(12, 'Shampoo', 150.0, 18.50, 'litro', '/fotos/shampoo.jpg'),
(13, 'Condicionador', 130.0, 19.90, 'litro', '/fotos/condicionador.jpg'),
(14, 'Creme Dental', 300.0, 4.99, 'unidade', '/fotos/creme_dental.jpg'),
(15, 'Sabonete', 400.0, 1.99, 'unidade', '/fotos/sabonete.jpg'),
(16, 'Desinfetante', 120.0, 8.00, 'litro', '/fotos/desinfetante.jpg'),
(17, 'Água Mineral', 600.0, 1.50, 'litro', '/fotos/agua_mineral.jpg'),
(18, 'Refrigerante', 300.0, 5.99, 'litro', '/fotos/refrigerante.jpg'),
(19, 'Biscoito Recheado', 250.0, 3.50, 'kg', '/fotos/biscoito_recheado.jpg'),
(20, 'Chocolate em Barra', 180.0, 7.99, 'kg', '/fotos/chocolate_barra.jpg'),
(21, 'Sal Refinado', 200.0, 2.20, 'kg', '/fotos/sal_refinado.jpg'),
(22, 'Farinha de Trigo', 150.0, 4.50, 'kg', '/fotos/farinha_trigo.jpg'),
(23, 'Vinagre', 100.0, 3.00, 'litro', '/fotos/vinagre.jpg'),
(24, 'Azeite de Oliva', 80.0, 25.90, 'litro', '/fotos/azeite_oliva.jpg');

CREATE TABLE produto_imagem(
    id INTEGER PRIMARY KEY NOT NULL,
    produto_id INTEGER REFERENCES produto(id),
    imagem text
);

INSERT INTO produto_imagem VALUES(1,1,'files/imagems/1/libreoffice-oasis-text-template.png');
INSERT INTO produto_imagem VALUES(2,1,'files/imagems/1/libreoffice-oasis-web-template.png');

CREATE TABLE venda(
    id INTEGER PRIMARY KEY NOT NULL,
    dt_venda date,
    total float,
    cliente_id int,
    obs text,
    FOREIGN KEY(cliente_id) REFERENCES cliente(id)
);

INSERT INTO venda (id, dt_venda, total, cliente_id, obs) VALUES
(1, '2015-03-14', 505.00, 1, 'Venda realizada sem desconto.'),
(2, '2016-07-22', 320.50, 2, 'Cliente solicitou entrega urgente.'),
(3, '2017-11-05', 450.75, 3, 'Pagamento à vista.'),
(4, '2018-02-18', 600.00, 4, 'Venda com desconto de 10%.'),
(5, '2019-05-30', 780.25, 5, 'Cliente fidelidade.'),
(6, '2020-09-12', 230.90, 6, 'Venda realizada com pagamento parcelado.'),
(7, '2021-01-25', 1500.00, 7, 'Pedido especial para evento.'),
(8, '2022-04-08', 890.60, 8, 'Cliente solicitou nota fiscal.'),
(9, '2023-08-15', 420.00, 9, 'Venda realizada com frete grátis.'),
(10, '2024-12-01', 950.75, 10, 'Cliente novo, primeira compra.');

CREATE TABLE venda_item(
    id INTEGER PRIMARY KEY NOT NULL,
    preco_venda FLOAT,
    quantidade FLOAT,
    desconto FLOAT,
    total FLOAT,
    produto_id FLOAT,
    venda_id FLOAT,
    FOREIGN KEY(produto_id) REFERENCES produto(id),
    FOREIGN KEY(venda_id) REFERENCES venda(id)
);

INSERT INTO venda_item (id, preco_venda, quantidade, desconto, total, produto_id, venda_id) VALUES
(1, 8.99, 2.0, 0.0, 17.98, 1, 1),
(2, 6.50, 3.0, 0.5, 19.00, 2, 1),
(3, 3.99, 5.0, 0.0, 19.95, 3, 2),
(4, 7.20, 1.0, 0.0, 7.20, 4, 2),
(5, 4.50, 4.0, 0.0, 18.00, 5, 3),
(6, 12.99, 2.0, 1.0, 24.98, 6, 3),
(7, 3.20, 10.0, 0.0, 32.00, 7, 4),
(8, 2.99, 5.0, 0.0, 14.95, 8, 4),
(9, 15.90, 1.0, 0.0, 15.90, 9, 5),
(10, 2.50, 3.0, 0.0, 7.50, 10, 5),
(11, 12.00, 2.0, 0.0, 24.00, 11, 6),
(12, 18.50, 1.0, 0.0, 18.50, 12, 6),
(13, 19.90, 1.0, 0.0, 19.90, 13, 7),
(14, 4.99, 3.0, 0.0, 14.97, 14, 7),
(15, 1.99, 10.0, 0.0, 19.90, 15, 8),
(16, 8.00, 2.0, 0.0, 16.00, 16, 8),
(17, 1.50, 6.0, 0.0, 9.00, 17, 9),
(18, 5.99, 3.0, 0.0, 17.97, 18, 9),
(19, 3.50, 4.0, 0.0, 14.00, 19, 10),
(20, 7.99, 2.0, 0.0, 15.98, 20, 10),
(21, 2.20, 5.0, 0.0, 11.00, 21, 1),
(22, 4.50, 3.0, 0.0, 13.50, 22, 2),
(23, 3.00, 2.0, 0.0, 6.00, 23, 3),
(24, 25.90, 1.0, 0.0, 25.90, 24, 4),
(25, 8.99, 2.0, 0.0, 17.98, 1, 5),
(26, 6.50, 3.0, 0.5, 19.00, 2, 6);

CREATE VIEW view_vendas as
    select
        id,
        nome,
        endereco,
        telefone,
        nascimento,
        situacao,
        email,
        genero,
        cidade_id,
        categoria_id,
        (
            select
            sum(total)
            from
            venda
            where
            cliente_id = cliente.id
        )
        as total,
        (
            select
            max(dt_venda)
            from
            venda
            where
            cliente_id = cliente.id
        )
        as last_date
    from
        cliente;
commit;
