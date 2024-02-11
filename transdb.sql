-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 14 2023 г., 12:59
-- Версия сервера: 8.0.22
-- Версия PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `transdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Новость', 7, 'add_new'),
(26, 'Can change Новость', 7, 'change_new'),
(27, 'Can delete Новость', 7, 'delete_new'),
(28, 'Can view Новость', 7, 'view_new'),
(29, 'Can add Тип тарифа', 8, 'add_rtype'),
(30, 'Can change Тип тарифа', 8, 'change_rtype'),
(31, 'Can delete Тип тарифа', 8, 'delete_rtype'),
(32, 'Can view Тип тарифа', 8, 'view_rtype'),
(33, 'Can add Тариф', 9, 'add_rate'),
(34, 'Can change Тариф', 9, 'change_rate'),
(35, 'Can delete Тариф', 9, 'delete_rate'),
(36, 'Can view Тариф', 9, 'view_rate'),
(37, 'Can add Заявка', 10, 'add_order'),
(38, 'Can change Заявка', 10, 'change_order'),
(39, 'Can delete Заявка', 10, 'delete_order'),
(40, 'Can view Заявка', 10, 'view_order'),
(41, 'Can add Сообщение', 11, 'add_umessage'),
(42, 'Can change Сообщение', 11, 'change_umessage'),
(43, 'Can delete Сообщение', 11, 'delete_umessage'),
(44, 'Can view Сообщение', 11, 'view_umessage');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$SbpsntJIKa5tM6QDDjplMi$6NLhkVoMms8Rl1wAQe5eg57b5vsUB24mo+3R17vxjlg=', '2023-12-14 08:46:44.743754', 1, 'admin', '', '', 'ad@min.nn', 1, 1, '2023-12-13 12:48:36.759282');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Дамп данных таблицы `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-12-13 12:58:43.455804', '7', 'В 2023 году публичным Wi-Fi Компании ТрансТелеКом на вокзалах и железнодорожных станциях воспользовались более пяти миллионов человек', 2, '[{\"changed\": {\"fields\": [\"\\u0424\\u043e\\u0442\\u043e\"]}}]', 7, 1),
(2, '2023-12-13 12:59:14.314672', '6', 'О цифровой трансформации транспортно-логистической сферы рассказал представитель компании ТрансТелеКом на круглом столе, прошедшем на Северном Кавказе', 2, '[{\"changed\": {\"fields\": [\"\\u0424\\u043e\\u0442\\u043e\"]}}]', 7, 1),
(3, '2023-12-13 12:59:25.332020', '5', 'Акция «Привилегия»: высокоскоростной интернет со скидкой до 30% на год', 2, '[{\"changed\": {\"fields\": [\"\\u0424\\u043e\\u0442\\u043e\"]}}]', 7, 1),
(4, '2023-12-13 12:59:31.330946', '4', 'ТрансТелеКом провел масштабную встречу операторов связи', 2, '[{\"changed\": {\"fields\": [\"\\u0424\\u043e\\u0442\\u043e\"]}}]', 7, 1),
(5, '2023-12-13 12:59:45.802781', '3', 'На юбилей Дворца культуры железнодорожников Компания ТрансТелеКом организовала высокоскоростной доступ в интернет', 2, '[{\"changed\": {\"fields\": [\"\\u0424\\u043e\\u0442\\u043e\"]}}]', 7, 1),
(6, '2023-12-13 12:59:52.469512', '2', 'В 2023 году Центр поддержки клиентов РЖД, работу которого обеспечивает компания ТрансТелеКом, обслужил на 25% больше обращений в мессенджерах и чатах', 2, '[{\"changed\": {\"fields\": [\"\\u0424\\u043e\\u0442\\u043e\"]}}]', 7, 1),
(7, '2023-12-13 13:00:06.657641', '1', 'Дирекция скоростного сообщения – филиал ОАО РЖД и Компания ТрансТелеКом получили премию Comnews Awards за лучшее цифровое решение для транспорта', 2, '[{\"changed\": {\"fields\": [\"\\u0424\\u043e\\u0442\\u043e\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'pages', 'new'),
(10, 'pages', 'order'),
(9, 'pages', 'rate'),
(8, 'pages', 'rtype'),
(11, 'pages', 'umessage'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-12-13 07:52:06.930336'),
(2, 'auth', '0001_initial', '2023-12-13 07:52:08.514394'),
(3, 'admin', '0001_initial', '2023-12-13 07:52:08.820555'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-12-13 07:52:08.838662'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-13 07:52:08.850402'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-12-13 07:52:09.052790'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-12-13 07:52:09.185098'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-12-13 07:52:09.306477'),
(9, 'auth', '0004_alter_user_username_opts', '2023-12-13 07:52:09.319881'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-12-13 07:52:09.427620'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-12-13 07:52:09.436833'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-12-13 07:52:09.449449'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-12-13 07:52:09.568802'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-12-13 07:52:09.687568'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-12-13 07:52:09.812916'),
(16, 'auth', '0011_update_proxy_permissions', '2023-12-13 07:52:09.825377'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-12-13 07:52:09.938481'),
(18, 'sessions', '0001_initial', '2023-12-13 07:52:10.026345'),
(19, 'pages', '0001_initial', '2023-12-13 12:47:59.677339'),
(20, 'pages', '0002_rtype_rate', '2023-12-13 13:10:35.954558'),
(21, 'pages', '0003_order', '2023-12-13 14:08:02.023835'),
(22, 'pages', '0004_umessage', '2023-12-13 15:31:05.627483');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('16y1hfwl2y4niq0i2nyeix9och9oo7ew', '.eJxVjEEOwiAQRe_C2hCGDoS6dO8ZyMAMUjU0Ke3KeHdt0oVu_3vvv1Skba1x67LEidVZgTr9bonyQ9oO-E7tNus8t3WZkt4VfdCurzPL83K4fweVev3WZCQbQGvQOwZJYoNAxpECGHDODh4G8GNCk5nYOhuKQQdSMPkCWNT7A8M5Nxw:1rDhMi:-I598Fgx8KJgHHBIHBh4gof3GJeEZt5Ho89RVdqEVDA', '2023-12-28 08:46:44.751789');

-- --------------------------------------------------------

--
-- Структура таблицы `pages_new`
--

CREATE TABLE `pages_new` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `pdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages_new`
--

INSERT INTO `pages_new` (`id`, `title`, `text`, `photo`, `pdate`) VALUES
(1, 'Дирекция скоростного сообщения – филиал ОАО РЖД и Компания ТрансТелеКом получили премию Comnews Awards за лучшее цифровое решение для транспорта', 'Совместный проект Компании ТрансТелеКом и Дирекции скоростного сообщения – филиал ОАО «РЖД» стал победителем в номинации «Лучшее цифровое решение для транспорта и логистики» ежегодной премии ComNews Awards. Экспертное жюри высоко оценило проект по развитию платформы «Сапсан Медиа», который ТрансТелеКом реализует по заказу Дирекции скоростного сообщения.\r\n\r\nС помощью платформы «Сапсан Медиа» пассажиры могут комфортно провести время в дороге: посмотреть фильм, послушать музыку или почитать книги, заказать сувенирную продукцию или цветы. Для юных путешественников разработан детский раздел. Кроме того, в дороге с помощью аудио- и видеогида можно узнать интересные факты о местности, через которую проезжает поезд.\r\nТакже пассажирам доступны функции просмотра актуального расписания, оценки работы проводников, виртуального 3D-тура в кабину машиниста.', 'images/IMG_3550.jpg', '2023-12-11'),
(2, 'В 2023 году Центр поддержки клиентов РЖД, работу которого обеспечивает компания ТрансТелеКом, обслужил на 25% больше обращений в мессенджерах и чатах', 'Почти девять миллионов обращений по вопросам пассажирских перевозок обработал Центр поддержки клиентов ОАО «РЖД» в течение трех первых кварталов 2023 года. Это более чем на 10% превышает показатели за аналогичный период прошлого года. Деятельность Центра обеспечивает АО «Компания ТрансТелеКом».\r\n\r\nНаиболее быстрые темпы роста продемонстрировали неголосовые обращения, поступающие по электронной почте, через мессенджеры, чаты на сайте РЖД и в мобильном приложении «Пассажиры». Количество таких обращений увеличилось на 25% по сравнению с 2022 годом.\r\n\r\nРастет также популярность услуг Центра содействия мобильности ОАО «РЖД», который создан для организации помощи маломобильным пассажирам во время поездок. В период с января по сентябрь 2023 года поступило на 20% больше таких обращений, чем за аналогичный период прошлого года.', 'images/pzhd.jpg', '2023-12-05'),
(3, 'На юбилей Дворца культуры железнодорожников Компания ТрансТелеКом организовала высокоскоростной доступ в интернет', 'Дворец культуры железнодорожников на станции Ростов-Главный СКЖД отметил свой 95-й день рождения! Поздравить сотрудников и коллективы учреждения пришли друзья и партнеры, среди которых и Компания ТрансТелеКом.\r\n\r\nЗа годы своего существования Дворец культуры Железнодорожников стал местом притяжения горожан, прививая любовь к искусству.\r\n\r\n«На протяжении 95 лет Дворец культуры железнодорожников помогает жителям города организовать полезный досуг, раскрыть способности и таланты. Мы искренне благодарим коллектив Дворца за вклад в культурную жизнь Ростова-на-Дону и желаем долгой и насыщенной жизни, новых ярких проектов», - отметил директор Макрорегиона Кавказ Виталий Соловьев.\r\n\r\nК юбилею любимого многими поколениями ростовчан Дворца культуры крупный оператор связи организовал подключение учреждения к высокоскоростному интернету.', 'images/dkzh1.jpg', '2023-12-04'),
(4, 'ТрансТелеКом провел масштабную встречу операторов связи', 'Масштабная конференция операторов связи, организованная Компанией ТрансТелеКом, прошла в конце ноября в Санкт-Петербурге. Более сотни профессионалов операторской отрасли из Северо-Западных регионов России, Поволжья, Сибири собрались, чтобы обсудить актуальное состояние рынка, тренды и перспективы в сфере магистрального транзита данных.\r\n\r\nРуководитель Департамента развития телеком-бизнеса Компании ТрансТелеКом Илья Гуденко рассказал участникам встречи о динамике показателей магистрального транзита данных, ключевых вопросах международного операторского взаимодействия и потребностях игроков рынка как в привычных телекоммуникационных, так и новых услугах.', 'images/_.jpg', '2023-11-28'),
(5, 'Акция «Привилегия»: высокоскоростной интернет со скидкой до 30% на год', 'С 17 ноября для абонентов ТТК появилась возможность зафиксировать стоимость домашнего интернета на полгода или на год.\r\n\r\nПолучить высокоскоростной интернет на год с 30 % скидкой или на 6 месяцев с 20% скидкой от базовой абонентской платы по действующему тарифному плану за услугу Интернет дает акция «Привилегия».\r\n\r\nЧтобы зафиксировать цену, абонентам необходимо пополнить счет по специальной цене и далее ежемесячная абонентская плата за пользование интернетом со скоростью 100 Мбит/с в течение года будет составлять всего 1 рубль в месяц.\r\n\r\nПринять участие в акции можно через личный кабинет или обратившись в офисы компании.', 'images/___1360890.jpg', '2023-11-22'),
(6, 'О цифровой трансформации транспортно-логистической сферы рассказал представитель компании ТрансТелеКом на круглом столе, прошедшем на Северном Кавказе', 'Ведущие эксперты логистической отрасли, представители грузоотправителей, компаний-операторов подвижного состава, крупнейших стивидорных компаний и операторов морских терминалов, а также представители органов власти субъектов Российской Федерации собрались в Минеральных Водах для участия в круглом столе на тему «Драйверы повышения эффективности железнодорожной логистики на Юге России».\r\n\r\nОрганизатором мероприятия выступила Северо-Кавказская железная дорога.\r\n\r\nВ ходе обсуждения директор по работе с клиентами корпоративного и государственного сегмента макрорегиона «Кавказ» Компании ТрансТелеКом Станислав Самойленко рассказал о цифровой трансформации транспортно-логистической сферы.\r\n\r\n«ТрансТелеКом успешно участвует в реализации проектов по созданию логистических центров на территории России с внедрением модулей видеоаналитики и применением мультифокальных матричных систем для обеспечения безопасности и повышения эффективности управления погрузочно-разгрузочным процессом», - отметил Станислав Самойленко.', 'images/IMG_3340.jpg', '2023-11-16'),
(7, 'В 2023 году публичным Wi-Fi Компании ТрансТелеКом на вокзалах и железнодорожных станциях воспользовались более пяти миллионов человек', 'Более пяти миллионов уникальных пользователей зашли в интернет через публичный Wi-Fi на железнодорожных вокзалах и станциях в течение трех первых кварталов 2023 года. Оператором сервиса выступает АО «Компания ТрансТелеКом».\r\n\r\nОбщий объем скачанных данных составил почти 1,8 тысяч терабайт – это на 60% больше, чем за аналогичный период прошлого года. Лидерами по потреблению интернет-трафика стали вокзалы Краснодара, Ростова-на-Дону, Адлера, столичный Восточный вокзальный комплекс, а возглавил Топ-5 Павелецкий вокзал Москвы, где посетители скачали почти 50 терабайт данных.\r\n\r\nПроект по оснащению железнодорожных вокзалов и станций беспроводным доступом в интернет реализуется ОАО «РЖД» и АО «Компания ТрансТелеКом» с 2015 года. Популярность услуги растет быстрыми темпами. На вокзалах интернет необходим и тем, кто отправляется в путь и хочет перед путешествием с пользой провести время в зале ожидания, и прибывающим пассажирам, чтобы вызвать такси, скачать карты незнакомого города, познакомиться с достопримечательностями.', 'images/DU6A3456.jpg', '2023-12-09');

-- --------------------------------------------------------

--
-- Структура таблицы `pages_order`
--

CREATE TABLE `pages_order` (
  `id` bigint NOT NULL,
  `phone` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ctype` varchar(255) NOT NULL,
  `text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages_order`
--

INSERT INTO `pages_order` (`id`, `phone`, `name`, `ctype`, `text`) VALUES
(1, '123 456 78 90', 'Елена', 'ФЛ', 'Нужен интернет'),
(3, '777-777', 'Сергей', 'ЮЛ', 'Нужен интернет для сети кафе');

-- --------------------------------------------------------

--
-- Структура таблицы `pages_rate`
--

CREATE TABLE `pages_rate` (
  `id` bigint NOT NULL,
  `rtitle` varchar(255) NOT NULL,
  `speed` int NOT NULL,
  `tv` int NOT NULL,
  `desc` longtext NOT NULL,
  `price` int NOT NULL,
  `rtype_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages_rate`
--

INSERT INTO `pages_rate` (`id`, `rtitle`, `speed`, `tv`, `desc`, `price`, `rtype_id`) VALUES
(1, 'Киноман', 100, 154, 'Домашний Интернет + Интерактивное Телевидение, неограниченные звонки на ТТК Mobile, \r\nонлайн-кинотеатр на выбор!', 550, 2),
(2, 'Твой выбор', 100, 0, 'Домашний Интернет', 300, 2),
(3, 'Улётный 300', 300, 0, 'Высокоскоростной интернет, тариф подключается при технической возможности.', 700, 2),
(4, 'Игровой', 100, 0, 'Интернет + 5 часов игрового времени', 650, 2),
(5, 'Wifi для общепита', 200, 0, 'Wifi-сеть для организации.', 500, 1),
(6, 'Телевидение для организаций', 0, 200, 'Большой выбор каналов.', 300, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `pages_rtype`
--

CREATE TABLE `pages_rtype` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages_rtype`
--

INSERT INTO `pages_rtype` (`id`, `title`) VALUES
(1, 'бизнес'),
(2, 'домашний');

-- --------------------------------------------------------

--
-- Структура таблицы `pages_umessage`
--

CREATE TABLE `pages_umessage` (
  `id` bigint NOT NULL,
  `email` varchar(300) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `mtext` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages_umessage`
--

INSERT INTO `pages_umessage` (`id`, `email`, `name`, `mtext`) VALUES
(1, 'test@tt.cc', 'Иван', 'Есть тарифы на мобильную связь?');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индексы таблицы `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индексы таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индексы таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индексы таблицы `pages_new`
--
ALTER TABLE `pages_new`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages_order`
--
ALTER TABLE `pages_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages_rate`
--
ALTER TABLE `pages_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_rate_rtype_id_48d69a2d_fk_pages_rtype_id` (`rtype_id`);

--
-- Индексы таблицы `pages_rtype`
--
ALTER TABLE `pages_rtype`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages_umessage`
--
ALTER TABLE `pages_umessage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `pages_new`
--
ALTER TABLE `pages_new`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `pages_order`
--
ALTER TABLE `pages_order`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `pages_rate`
--
ALTER TABLE `pages_rate`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `pages_rtype`
--
ALTER TABLE `pages_rtype`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `pages_umessage`
--
ALTER TABLE `pages_umessage`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `pages_rate`
--
ALTER TABLE `pages_rate`
  ADD CONSTRAINT `pages_rate_rtype_id_48d69a2d_fk_pages_rtype_id` FOREIGN KEY (`rtype_id`) REFERENCES `pages_rtype` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
