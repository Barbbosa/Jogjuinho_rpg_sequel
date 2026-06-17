create table mascote (
  id_mascote int primary key,
  especie varchar (20),
  caracteristicas varchar(450)
);
create table skin(
  id_skin int primary key,
  estilo varchar (30),
  descricao varchar(200)
);
CREATE TABLE jogador (
  id_jogador int primary key,
  nome_skin varchar (30),
  altura float,
  id_mascote int,
  nome_mascote varchar (30),
  foreign key (id_mascote) references mascote (id_mascote)
);

insert into mascote values (1, 'dragão', 'Criaturas aladas de grande porte, capazes de ultrapassar 8 metros de comprimento. Possuem escamas resistentes, grande força física e a habilidade de voar por longas distâncias. Dependendo da espécie, podem expelir poderosas rajadas de fogo ou gelo pela boca, utilizando esse recurso tanto para caça quanto para defesa'),
(2, 'Fada', 'Fadas são pequenas criaturas mágicas com asas delicadas e grande agilidade no voo. Possuem forte ligação com a natureza e habilidades como cura, encantamentos e ilusões. Apesar da aparência frágil, são inteligentes e utilizam sua magia para proteger florestas, animais e outros seres mágicos.'),
(3, 'Lobo Lunar', 'Lobos Lunares são seres místicos que obtêm seu poder da luz da lua. Durante a noite, podem manipular o espaço e o tempo, realizando deslocamentos instantâneos, criando distorções temporais e alterando a percepção dos que os cercam. Ágeis e enigmáticos, são considerados guardiões dos mistérios noturnos.'),
(4, 'Broto', 'Brotos são criaturas da flora capazes de crescer e se desenvolver rapidamente em ambientes terrosos. Utilizam raízes, cipós e espinhos para atacar inimigos à distância, causando danos sem precisar se aproximar. Sua forte conexão com a terra permite controlar a vegetação ao redor, criar obstáculos e expandir seu alcance de ataque, tornando-os adversários versáteis e perigosos.');
insert into jogador values (1, 'Badbunnyb', 1.75, 3, 'Lunaris'),
(2, 'Cailotie', 1.75, 4, 'Verdantis'),
(3, 'Aldric', 1.82, 1, 'Pyrax'),
(4, 'Sylvaris', 1.76, 2, 'Aeloria'),create table mascote (
  id_mascote int primary key,
  especie varchar (20),
  caracteristicas varchar(450)
);
create table skin(
  id_skin int primary key,
  estilo varchar (30),
  descr varchar(200)
);

create table arma(
  id_arma int primary key,
  nome_arma varchar (40),
  material varchar(30),
  descricao varchar (220)
);

create table mundo(
  id_mundo int primary key,
  bioma varchar (40),
  descr varchar(220)
);

CREATE TABLE jogador (
  id_jogador int primary key,
  nome_skin varchar (30),
  altura float,
  id_mascote int,
  nome_mascote varchar (30),
  foreign key (id_mascote) references mascote (id_mascote)
);
create table missao(
  id_missão int primary key,
  id_mundo int,
  objetivo varchar (200),
  id_jogador int,
  foreign key (id_jogador) references jogador (id_jogador),
  foreign key (id_mundo) references mundo (id_mundo)
);
insert into mascote values (1, 'dragão', 'Criaturas aladas de grande porte, capazes de ultrapassar 8 metros de comprimento. Possuem escamas resistentes, grande força física e a habilidade de voar por longas distâncias. Dependendo da espécie, podem expelir poderosas rajadas de fogo ou gelo pela boca, utilizando esse recurso tanto para caça quanto para defesa'),
(2, 'Fada', 'Fadas são pequenas criaturas mágicas com asas delicadas e grande agilidade no voo. Possuem forte ligação com a natureza e habilidades como cura, encantamentos e ilusões. Apesar da aparência frágil, são inteligentes e utilizam sua magia para proteger florestas, animais e outros seres mágicos.'),
(3, 'Lobo Lunar', 'Lobos Lunares são seres místicos que obtêm seu poder da luz da lua. Durante a noite, podem manipular o espaço e o tempo, realizando deslocamentos instantâneos, criando distorções temporais e alterando a percepção dos que os cercam. Ágeis e enigmáticos, são considerados guardiões dos mistérios noturnos.'),
(4, 'Broto', 'Brotos são criaturas da flora capazes de crescer e se desenvolver rapidamente em ambientes terrosos. Utilizam raízes, cipós e espinhos para atacar inimigos à distância, causando danos sem precisar se aproximar. Sua forte conexão com a terra permite controlar a vegetação ao redor, criar obstáculos e expandir seu alcance de ataque, tornando-os adversários versáteis e perigosos.');



INSERT INTO skin VALUES
(1, 'Medieval', 'Inspirada nos cavaleiros e reinos antigos, com armaduras, brasões e visual clássico de fantasia.'),
(2, 'Élfico', 'Visual elegante ligado à natureza, com detalhes refinados e traços inspirados nos elfos.'),
(3, 'Arcano', 'Marcada por símbolos mágicos e energia mística, ideal para usuários de magia.'),
(4, 'Sombrio', 'Aparência envolta em sombras, transmitindo mistério e poder obscuro.'),
(5, 'Celestial', 'Inspirada nos céus e estrelas, com brilho suave e aspecto divino.'),
(6, 'Dracônico', 'Baseada na força dos dragões, com escamas, garras e detalhes imponentes.'),
(7, 'Feérico', 'Visual leve e encantado, inspirado nas criaturas mágicas das florestas.'),
(8, 'Cyberpunk', 'Mistura tecnologia avançada, neon e elementos futuristas.'),
(9, 'Viking', 'Inspirada nos guerreiros nórdicos, com peles, runas e espírito de batalha.'),
(10, 'Cristalino', 'Composto por estruturas cristalinas brilhantes que refletem luz e magia.');



insert into arma values (1, 'espada', 'diamante', 'Espada encantada de diamante lapidado, forjada pelos renomados trolls ferreiros de Trooling. Sua lâmina combina resistência excepcional e poder mágico, tornando-a uma arma temida por qualquer adversário.'),
(2,'Arco de cipós','Madeira e cipós', 'Arco encantado das terras dos Brotos. Sua magia nasce da energia de guerreiros da flora que morreram em batalha, mas recusaram perecer. Cada flecha carrega a força e a vontade desses espíritos resistentes.'),(3, 'Adaga de fogo','Ferro e fogo', 'Adaga forjada pelo fogo de dragões. Essa arma combina magia e força de combate corpo a corpo contra o oponente, ideal como arma secundaria');
;







alter table jogador 
add  id_skin int,
add foreign key (id_skin) references skin (id_skin);




insert into jogador values (1,'badbunnyb', 1.75, 3, 'lunati', 5);



show tables;
select * from jogador;
select * from arma;
select * from mascote;
select * from missao;
select * from mundo;
select * from skin;
describe jogador;











(5, 'Thorin', 1.42, 4, 'Bramble'),
(6, 'Elarion', 1.88, 3, 'Noctis'),
(7, 'Kael', 1.79, 1, 'Ignivar'),
(8, 'Lyssandra', 1.70, 2, 'Sylphia'),
(9, 'Valtherion', 1.91, 3, 'Umbryl'),
(10, 'Nymira', 1.68, 4, 'Verdor'),
(11, 'Draven', 1.85, 1, 'Cinderax'),
(12, 'Aerendyl', 1.83, 2, 'Lumina');



INSERT INTO skin VALUES
(1, 'Medieval', 'Inspirada nos cavaleiros e reinos antigos, com armaduras, brasões e visual clássico de fantasia.'),
(2, 'Élfico', 'Visual elegante ligado à natureza, com detalhes refinados e traços inspirados nos elfos.'),
(3, 'Arcano', 'Marcada por símbolos mágicos e energia mística, ideal para usuários de magia.'),
(4, 'Sombrio', 'Aparência envolta em sombras, transmitindo mistério e poder obscuro.'),
(5, 'Celestial', 'Inspirada nos céus e estrelas, com brilho suave e aspecto divino.'),
(6, 'Dracônico', 'Baseada na força dos dragões, com escamas, garras e detalhes imponentes.'),
(7, 'Feérico', 'Visual leve e encantado, inspirado nas criaturas mágicas das florestas.'),
(8, 'Cyberpunk', 'Mistura tecnologia avançada, neon e elementos futuristas.'),
(9, 'Viking', 'Inspirada nos guerreiros nórdicos, com peles, runas e espírito de batalha.'),
(10, 'Cristalino', 'Composto por estruturas cristalinas brilhantes que refletem luz e magia.');


alter table jogador 
add  id_skin int,
add foreign key (id_skin) references skin (id_skin);


update jogador
set id_skin = 3
where id_jogador = 1;


select * from jogador;












