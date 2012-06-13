-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Jun 12, 2012 as 05:15 PM
-- Versão do Servidor: 5.5.17
-- Versão do PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `The Dancing Mustache`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `artista`
--

CREATE TABLE IF NOT EXISTS `artista` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(40) NOT NULL,
  `Votos` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `artista`
--

INSERT INTO `artista` (`ID`, `Nome`, `Votos`) VALUES
(1, 'Coldplay', 48865),
(2, 'Linkin Park', 25599),
(3, 'David Guetta', 786522),
(4, 'Legiao Urbana', 265484),
(5, 'Bruno Mars', 156638);

-- --------------------------------------------------------

--
-- Estrutura da tabela `musica`
--

CREATE TABLE IF NOT EXISTS `musica` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(80) NOT NULL,
  `Visualizações` int(11) NOT NULL,
  `Categoria` enum('Axé','Black Music','Blues','Bossa Nova','Clássico','Country','Dance','Disco','Eletronica','Emocore','Fado','Folk','Forró','Funk','Gospel','Gótico','Hard Rock','Hip Hop','House','Indie','Infantil','Instrumental','Jazz','Jovem Guarda','MPB','Pagode','Pop','Punk Rock','R&B','Rap','Reggae','Regional','Rock','Romântico','Samba','Sertanejo','Soul Music','Surf Music','Tecno Pop') NOT NULL,
  `Letra` text NOT NULL,
  `Autor` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `musica`
--

INSERT INTO `musica` (`ID`, `Titulo`, `Visualizações`, `Categoria`, `Letra`, `Autor`) VALUES
(1, 'Não se vá', 54488, 'Pop', '</br>Não se vá!\r\n</br>Eu já não posso suportar\r\n</br>Esta minha vida de amargura\r\n</br>Não se vá!\r\n</br>Estou partindo porque sei\r\n</br>Que você já não mais me ama...\r\n</br>\r\n</br>Não se vá!\r\n</br>O seu ciúme é o culpado\r\n</br>Desta minha desventura\r\n</br>Não se vá!\r\n</br>O nosso amor não é mais o mesmo\r\n</br>É melhor que eu vá embora...\r\n</br>\r\n</br>Não se vá!\r\n</br>Não me abandone por favor\r\n</br>Pois sem você vou ficar louco\r\n</br>É o ciúme que está\r\n</br>Nos separando pouco a pouco...\r\n</br>\r\n</br>Não se vá!\r\n</br>Me dê uma chance outra vez\r\n</br>Daqui prá frente tudo vai mudar\r\n</br>Me dê a mão com muito amor\r\n</br>E nova vida vamos começar...\r\n</br>\r\n</br>Lá lá lá lá, lá lá lá lá lá lá...\r\n</br>Lá lá lá lá, lá lá lá lá lá lá...\r\n</br>\r\n</br>(repetir a letra)', 'Jane e Herondy'),
(2, 'Forever Young', 168874, 'Pop', '</br>Let''s dance in style, let''s dance for a while\r\n</br>Heaven can wait we''re only watching the skies\r\n</br>Hoping for the best but expecting the worst\r\n</br>Are you going to drop the bomb or not?\r\n</br>\r\n</br>Let us die young or let us live forever\r\n</br>We don''t have the power but we never say never\r\n</br>Sitting in a sandpit, life is a short trip\r\n</br>The music''s for the sad men\r\n</br>\r\n</br>Can you imagine when this race is won\r\n</br>Turn our golden faces into the sun\r\n</br>Praising our leaders we''re getting in tune\r\n</br>The music''s played by the mad men\r\n</br>\r\n</br>Forever young, I want to be forever young\r\n</br>Do you really want to live forever?\r\n</br>Forever, or never\r\n</br>Forever young, I want to be forever young\r\n</br>Do you really want to live forever?\r\n</br>Forever young\r\n</br>\r\n</br>Some are like water, some are like the heat\r\n</br>Some are a melody and some are the beat\r\n</br>Sooner or later they all will be gone\r\n</br>Why don''t they stay young\r\n</br>\r\n</br>It''s so hard to get old without a cause\r\n</br>I don''t want to perish like a fading horse\r\n</br>Youth''s like diamonds in the sun\r\n</br>And diamonds are forever\r\n\r\n</br>So many adventures couldn''t happen today\r\n</br>So many songs we forgot to play\r\n</br>So many dreams swinging out of the blue\r\n</br>We let them come true\r\n\r\n</br>Forever young, I want to be forever young\r\n</br>Do you really want to live forever?\r\n</br>Forever, or never\r\n</br>Forever young, I want to be forever young\r\n</br>Do you really want to live forever?\r\n</br>Forever, or never\r\n</br>\r\n</br>Forever young, I wanna be forever young\r\n</br>Do you really want to live forever?', 'Alphaville'),
(3, 'Wonderful World', 545889, 'Pop', '</br>I see trees of green, red roses too.\r\n</br>I see them bloom for me and you.\r\n</br>And I think to myself,\r\n</br>What a wonderful world.\r\n</br>\r\n</br>I see skies of blue and clouds of white,\r\n</br>The bright blessed day, The dark sacred night.\r\n</br>And I think to myself,\r\n</br>What a wonderful world.\r\n</br>\r\n</br>The colours of the rainbow so pretty in the sky.\r\n</br>Are also on the faces of people going by.\r\n</br>I see friends shaking hands, saying: </br>"How do you do?"\r\n</br>They''re really saying:"I love you".\r\n</br>\r\n</br>I hear babies cry, I watch them grow,\r\n</br>They''ll learn much more, than I''ll never know.\r\n</br>And I think to myself,\r\n</br>What a wonderful world.\r\n</br>\r\n</br>Yes, I think to myself,\r\n</br>What a wonderful world.', 'Louis Armstrong'),
(4, 'Thunderstruck', 548756, 'Rock', '</br>Ahh-ahh-ahh-ahh-ahh-ahh (x7)\r\n</br>\r\n</br>Ahh-ahh-ahh-ahh-ahh-ahh\r\n</br>Thunder (x7)\r\n</br>\r\n</br>Thunder (x3)\r\n</br>\r\n</br>I was caught\r\n</br>In the middle of a railroad track (Thunder)\r\n</br>I looked round\r\n</br>And I knew there was no turning back (Thunder)\r\n</br>My mind raced\r\n</br>And I thought what could I do? (Thunder)\r\n</br>And I knew\r\n</br>There was no help, no help from you (Thunder)\r\n</br>\r\n</br>Sound of the drums\r\n</br>Beatin'' in my heart\r\n</br>The thunder of guns\r\n</br>Tore me apart\r\n</br>You''ve been - thunderstruck\r\n</br>\r\n</br>Went down the highway\r\n</br>Broke the limit, we hit the town\r\n</br>Went through to Texas, yeah Texas\r\n</br>And we had some fun\r\n</br>We met some girls\r\n</br>Some dancers who gave a good time\r\n</br>Broke all the rules, played all the fools\r\n</br>Yeah, yeah, they, they, they blew our minds\r\n</br>\r\n</br>Now the shakin'' at the knees\r\n</br>Could I come again please?\r\n</br>Yeah the ladies were too kind\r\n</br>You''ve been - thunderstruck, thunderstruck\r\n</br>Yeah yeah yeah, thunderstruck\r\n</br>\r\n</br>Oh, thunderstruck\r\n</br>Yeah\r\n</br>\r\n</br>Now we''re shaking at the knees\r\n</br>Could I come again please?\r\n</br>\r\n</br>Thunderstruck, thunderstruck\r\n</br>Yeah yeah yeah, thunderstruck\r\n</br>Thunderstruck, yeah, yeah, yeah\r\n</br>\r\n</br>Said yeah, it''s alright\r\n</br>We''re doing fine\r\n</br>Yeah, it''s alright\r\n</br>We''re doing fine\r\n</br>So fine\r\n</br>\r\n</br>Thunderstruck, yeah, yeah, yeah,\r\n</br>Thunderstruck, thunderstruck, thunderstruck\r\n</br>Whoa baby, thunder, thunderstruck\r\n</br>You''ve been thunderstruck, thunderstruck\r\n</br>Thunderstruck, thunderstruck\r\n</br>You''ve been thunderstruck.', 'AC/DC'),
(5, 'Every Teardrop Is a Waterfall', 745752, 'Pop', '</br>I turn the music up, I got my records on\r\n</br>I shut the world outside until the lights come on\r\n</br>Maybe the streets alight, maybe the trees are gone\r\n</br>I feel my heart start beating to my favourite song\r\n</br>\r\n</br>And all the kids they dance, all the kids all night\r\n</br>Until monday morning feels another life\r\n</br>I turn the music up\r\n</br>I''m on a roll this time\r\n</br>And heaven is in sight\r\n</br>\r\n</br>I turn the music up, I got my records on\r\n</br>From underneath the rubble sing a rebel song\r\n</br>Don''t want to see another generation drop\r\n</br>I''d rather be a comma than a full stop\r\n</br>\r\n</br>Maybe I''m in the black, maybe I''m on my knees\r\n</br>Maybe I''m in the gap between the two trapezes\r\n</br>But my heart is beating and my pulses start\r\n</br>Cathedrals in my heart\r\n</br>\r\n</br>As we saw oh this light I swear you, emerge blinking into\r\n</br>To tell me it''s alright\r\n</br>As we soar walls, every siren is a symphony\r\n</br>And every tear''s a waterfall\r\n</br>Is a waterfall\r\n</br>Oh\r\n</br>Is a waterfall\r\n</br>Oh oh oh\r\n</br>Is a is a waterfall\r\n</br>Every tear\r\n</br>Is a waterfall\r\n</br>Oh oh oh\r\n</br>\r\n</br>So you can hurt, hurt me bad\r\n</br>But still i''ll raise the flag\r\n</br>\r\n</br>Oh\r\n</br>It was a wa wa wa wa wa-aterfall\r\n</br>A wa wa wa wa wa-aterfall\r\n</br>\r\n</br>Every tear\r\n</br>Every tear\r\n</br>Every teardrop is a waterfall\r\n</br>\r\n</br>Every tear\r\n</br>Every tear\r\n</br>Every teardrop is a waterfall\r\n</br>\r\n</br>Every tear\r\n</br>Every tear\r\n</br>Every teardrop is a waterfall\r\n</br>\r\n</br>Every tear\r\n</br>Every tear\r\n</br>Every teardrop is a waterfall', 'Coldplay'),
(6, 'Son''s Gonna Rise', 46598, 'Pop', '<br/>Rollin'' down the highway\r\n<br/>Like a rocket\r\n<br/>God, I''m headed to town now\r\n<br/>You can''t stop it\r\n<br/>Got wheel in my hand\r\n<br/>As I stand\r\n<br/>On the floor\r\n<br/>Of the board\r\n<br/>Of this car\r\n<br/>On the road\r\n<br/>Got this woman in the back seat\r\n<br/>Yeah she''s my wifey\r\n<br/>In the middle of the delivery\r\n<br/>Man she saves me\r\n<br/>To this day I don''t know why\r\n<br/>She picked me up\r\n<br/>When I was down on the road\r\n<br/>With the wind when it blowed\r\n<br/>Well a son''s gonna rise in a mile\r\n<br/>In a mile\r\n<br/>You''ll be feeling fine\r\n<br/>In a mile you will see\r\n<br/>After me\r\n<br/>You''ll be out of the dark, yeah\r\n<br/>You''ll get your shot', 'Citizen Cope');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Login` varchar(40) NOT NULL,
  `Senha` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `usuario`
--

