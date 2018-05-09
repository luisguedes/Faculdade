DECLARE @C_AFR varchar(60) = 'África',
        @C_AMN varchar(60) = 'América do Norte',
        @C_AMS varchar(60) = 'América do Sul',
        @C_AMC varchar(60) = 'América Central',
        @C_ASIA varchar(60) = 'Asia',
        @C_OC varchar(60) = 'Oceania',
        @C_EUR varchar(60) = 'Europa',
        @P_FIN varchar(60) = 'Finlândia',
        @P_INDIA varchar(60) = 'Indía',
        @P_PAQ varchar(60) = "Paquistão",
        @P_SRI varchar(60) = "Sri Lanca",
        @P_FIL varchar(60) = "Filipinas",
        @P_INDO varchar(60) = "Indonésia",
        @P_VIET varchar(60) = "Vietnã",
        @P_CON varchar(60) = "Coreia do Norte",
        @P_COS varchar(60) = "Coreia do Sul",
        @P_LIB varchar(60) = "Líbano",
        @P_ANG varchar(60) = "Angola",
        @P_CBV varchar(60) = "Cabo Verde",
        @P_GNB varchar(60) = "Guiné-Bissau",
        @P_GNE varchar(60) = "Guiné Equatorial",
        @P_MOCA varchar(60) = "Moçambique",
        @P_STP varchar(60) = "São Tomé e Príncipe",
        @P_CMB varchar(60) = "Camboja",
        @P_MAL varchar(60) = "Malásia",
        @P_SING varchar(60) = "Singapura",
        @P_RUA varchar(60) = "Ruanda",
        @P_SUZ varchar(60) = "Suazilândia",
        @P_BR varchar(60) = 'Brasil';


-- POPULATE CONTINENTE
insert into continente values (@C_ASIA, 44580000, 4436224000);
insert into continente values (@C_AFR, 30370000, 1216000000);
insert into continente values (@C_AMN, 24710000, 579000000);
insert into continente values (@C_AMS, 17840000, 422500000);
insert into continente values (@C_AMC, 507966, 46761485);
insert into continente values (@C_EUR, 10180000, 741400000);
insert into continente values (@C_OC, 8526000, 40117432);

-- POPULATE PAIS
insert into pais values (@P_FIN, 338424, 5482013, "Euro", "Finlandês", "1917-12-06", "Homem-Aranha", "Helsínquia", "República parlamentarista", @C_EUR);
insert into pais values (@P_INDIA, 3287260, 1311050527, "Rupia Indiana", "Hindi", "1947-08-15", "Tempestade", "Nova Déli", "República Federal", @C_ASIA);
insert into pais values (@P_PAQ, 796095, 188924874, "Rupia Paquistanesa", "Inglês", "2000-10-01", "Wolverine", "Islamabade", "República parlamentarista", @C_ASIA);
insert into pais values (@P_SRI, 65610, 20966000, "Rupia Cingalesa", "Cingalês", "1948-02-04", "Capitã Marvel", "Colombo, Sri Jaiavardenapura-Cota", "República semipresidencialista", @C_ASIA);
insert into pais values (@P_FIL, 300000, 100699395, "Peso Filipino", "Filipino", "1898-09-29", "Homem de Ferro", "Manila", "República presidencialista", @C_ASIA);
insert into pais values (@P_INDO, 1910930, 257563815, "Rupia Indonésia", "Indonésio", "1949-12-27", "Capitão América", "Jacarta", "República presidencialista", @C_ASIA);
insert into pais values (@P_VIET, 331212, 91703800, "Dongue Vietnamita", "Vietnamita", "2000-10-01", "Gavião Arqueiro", "Hanói", "Estado Unitário", @C_ASIA);
insert into pais values (@P_CON, 120538, 25155317, "Won norte-coreano", "Coreano", "1945-11-09", "Viuva Negra", "Pionguiangue", "República popular socialista", @C_ASIA);
insert into pais values (@P_COS, 99828, 50617045, "Won sul-coreano", "Coreano", "1945-11-09", "Hulk", "Seul", "República presidencialista", @C_ASIA);
insert into pais values (@P_LIB, 10452, 5850743, "Libra libanesa", "Árabe", "1943-11-22", "Visão", "Beirute", "República parlamentarista", @C_ASIA);
insert into pais values (@P_ANG, 1246700, 25021974, "Kwanza angolano", "Português", "1974-01-04", "Thor", "Luanda", "República presidencialista", @C_AFR);
insert into pais values (@P_CBV, 4033, 520502, "Escudo cabo-verdiano", "Português", "1981-02-20", "Doutor Estranho", "Praia", "República unitária semipresidencialista", @C_AFR);
insert into pais values (@P_GNB, 36125, 1844325, "Franco", "Português", "1974-04-25", "Superman", "Bissau", "República semipresidencialista", @C_AFR);
insert into pais values (@P_GNE, 28051, 845060, "Franco", "Português", "1968-10-12", "Batman", "Malabo", "República semipresidencialista", @C_AFR);
insert into pais values (@P_MOCA, 801590, 27977863, "Metical moçambicano", "Português", "1974-09-08", "Aquaman", "Maputo", "República semipresidencialista", @C_AFR);
insert into pais values (@P_STP, 964, 190344, "Dobra de São Tomé e Príncipe", "Português", "1975-07-12", "Mulher Maravilha", "São Tomé", "República semipresidencialista", @C_AFR);
insert into pais values (@P_CMB, 181035, 15577899, "Riel Cambojano", "Khmer", "1953-10-09", "Pantera Negra", "Pnom Pene", "Monarquia Constitucional", @C_ASIA);
insert into pais values (@P_MAL, 330806, 30331007, "Ringuite Malario", "Malaio", "1957-08-31", "Flash", "Cuala Lumpur", "Monarquia Eletiva Constitucional", @C_ASIA);
insert into pais values (@P_SING, 710, 5535002, "Dolar de Singapura", "Inglês", "1965-08-09", "Lanterna Verde", "Singapura", "Republica Parlamentarista", @C_ASIA);
insert into pais values (@P_RUA, 26338, 11609666, "Franco Ruandês", "Francês", "1962-07-01", "Ciborgue", "Quigali", "Republica Semi Presidencialista", @C_AFR);
insert into pais values (@P_SUZ, 17364, 1286970, "Lilangeni suazilandês", "Inglês", "1968-11-06", "Caçador de Marte", "Lobamba", "Monarquia Absoluta", @C_AFR);
insert into pais values (@P_BR, 8514880, 207847528, "Real ", "Português", "1822-07-11", "Vampirão do Golpe", "Brasília", "República federativa presidencialista", @C_AMS);

-- POPULATE CIDADE
insert into cidade values ("1817-08-22", "Araraquara", 230770, null, @P_BR);
insert into cidade values ("1857-04-11", "São Carlos", 246088, null, @P_BR);
insert into cidade values ("1856-07-19", "Ribeirão Preto", 650916, null, @P_BR);
insert into cidade values ("1612-08-11", "São Luís (Maranhão)", 1091868, null, @P_BR);
insert into cidade values ("1982-07-01", "São Luís (Roraima)", 7309, null, @P_BR);
insert into cidade values ("1953-10-12", "São Luís de Montes Belos", 825999, null, @P_BR);
insert into cidade values ("1951-11-22", "São Luís do Curu", 12519, null, @P_BR);
insert into cidade values ("1995-12-14", "São Luís do Piauí", 2561, null, @P_BR);
insert into cidade values ("1892-05-16", "São Luís do Quitunde", 32412, null, @P_BR);
insert into cidade values ("1854-12-06", "São Luís Gonzaga do Maranhão", 20156, null, @P_BR);
insert into cidade values ("1550-08-22", "Helsínquia", 629512, null, @P_FIN);
insert into cidade values ("1947-08-22", "Nova Déli", 249998, null, @P_INDIA);
insert into cidade values ("1967-08-14", "Islamabade", 805235, null, @P_PAQ);
insert into cidade values ("1817-08-22", "Sri Jaiavardenapura-Cota", 3287384, null, @P_SRI);
insert into cidade values ("1571-08-22", "Manila", 1660714, null, @P_FIL);
insert into cidade values ("1527-06-22", "Jacarta", 8522589, null, @P_INDO);
insert into cidade values ("1954-08-22", "Hanói", 6448837, null, @P_VIET);
insert into cidade values ("1953-05-27", "Pionguiangue", 3255388, null, @P_CON);
insert into cidade values ("1900-01-01", "Seul", 31102014, null, @P_COS);
insert into cidade values ("1900-01-01", "Beirute", 1812000, null, @P_LIB);
insert into cidade values ("1576-02-25", "Luanda", 8234098, null, @P_ANG);
insert into cidade values ("1615-05-25", "Praia", 131602, null, @P_CBV);
insert into cidade values ("1692-03-15", "Bissau", 384960, null, @P_GNB);
insert into cidade values ("1827-03-13", "Malabo", 96000, null, @P_GNE);
insert into cidade values ("1887-10-10", "Maputo", 1101170, null, @P_MOCA);
insert into cidade values ("1817-08-22", "São Tomé", 230770, null, @P_STP);
insert into cidade values ("1865-12-16", "Pnom Pene", 1501725, null, @P_CMB);
insert into cidade values ("1972-01-01", "Cuala Lumpur", 1627172, null, @P_MAL);
insert into cidade values ("1901-02-28", "Singapura", 5399200, null, @P_SING);
insert into cidade values ("1901-08-22", "Quigali", 771691, null, @P_RUA);
insert into cidade values ("1800-08-22", "Lobamba", 5800, null, @P_SUZ);

-- POPULATE QUARTO
insert into quarto values ("Simples");
insert into quarto values ("Suite");
insert into quarto values ("Duplo");

-- POPULATE HOTEL
insert into hotel values (231000023, "Hotel Abelha", 5, 1);
insert into hotel values (423516999, "Hotel Bazuca", 3, 2);
insert into hotel values (903570293, "Hotel Coelho", 1, 3);
insert into hotel values (438742500, "Hotel Dadinho", 2, 4);
insert into hotel values (235781239, "Hotel Esmeralda", 4, 5);
insert into hotel values (342897423, "Hotel Formiga", 4, 6);
insert into hotel values (012029390, "Hotel Goiaba", 2, 7);
insert into hotel values (100924093, "Hotel Harry Potter", 3, 8);
insert into hotel values (345689203, "Hotel Isabel", 2, 9);
insert into hotel values (102948573, "Hotel Joaninha", 1, 10);
insert into hotel values (333929843, "Hotel Luminus", 5, 11);
insert into hotel values (340009457, "Hotel Muamba", 3, 12);
insert into hotel values (123000049, "Hotel Nadinha", 3, 13);
insert into hotel values (938422220, "Hotel Opala", 5, 14);
insert into hotel values (123555502, "Hotel Porcada", 1, 15);
insert into hotel values (230088890, "Hotel Queijada", 2, 16);
insert into hotel values (568882902, "Hotel Radio", 3, 17);
insert into hotel values (234950002, "Hotel Suzano", 4, 18);
insert into hotel values (123984773, "Hotel Tatu", 2, 19);
insert into hotel values (123879420, "Hotel Ubuntu", 3, 20);
insert into hotel values (325710003, "Hotel Vertigem", 5, 21);
insert into hotel values (490003298, "Hotel Wakanda", 1, 22);
insert into hotel values (345299934, "Hotel Zebra", 1, 23);
insert into hotel values (430034999, "Hotel Altura", 4, 24);
insert into hotel values (345882390, "Hotel Belo", 5, 25);
insert into hotel values (444398583, "Hotel Coyote", 3, 26);
insert into hotel values (438423984, "Hotel Democratico", 1, 27);
insert into hotel values (434429843, "Hotel Enbolado", 2, 28);
insert into hotel values (435783493, "Hotel Farofa", 4, 30);
insert into hotel values (994834773, "Hotel Guime", 2, 1);
insert into hotel values (342384748, "Hotel Hilton", 4, 2);
insert into hotel values (234532498, "Hotel Ironico", 2, 3);
insert into hotel values (234765283, "Hotel Junto", 1, 4);
insert into hotel values (342874984, "Hotel Lagoa", 3, 5);

-- POPULATE QUARTO -> HOTEL
insert into hotel_quarto values (50.00, 231000023, 1);
insert into hotel_quarto values (30.00, 423516999, 1);
insert into hotel_quarto values (60.00, 903570293, 1);
insert into hotel_quarto values (25.00, 438742500, 1);
insert into hotel_quarto values (30.00, 235781239, 1);
insert into hotel_quarto values (50.00, 342897423, 1);
insert into hotel_quarto values (50.00, 012029390, 1);
insert into hotel_quarto values (45.00, 100924093, 1);
insert into hotel_quarto values (35.00, 345689203, 1);
insert into hotel_quarto values (30.00, 102948573, 1);
insert into hotel_quarto values (45.00, 333929843, 1);
insert into hotel_quarto values (55.00, 340009457, 1);
insert into hotel_quarto values (60.00, 123000049, 1);
insert into hotel_quarto values (50.00, 938422220, 1);
insert into hotel_quarto values (50.00, 123555502, 1);
insert into hotel_quarto values (35.00, 230088890, 1);
insert into hotel_quarto values (40.00, 568882902, 1);
insert into hotel_quarto values (40.00, 234950002, 1);
insert into hotel_quarto values (35.00, 123984773, 1);
insert into hotel_quarto values (60.00, 123879420, 1);
insert into hotel_quarto values (65.00, 325710003, 1);
insert into hotel_quarto values (55.00, 490003298, 1);
insert into hotel_quarto values (55.00, 345299934, 1);
insert into hotel_quarto values (50.00, 430034999, 1);
insert into hotel_quarto values (50.00, 345882390, 1);
insert into hotel_quarto values (50.00, 444398583, 1);
insert into hotel_quarto values (60.00, 438423984, 1);
insert into hotel_quarto values (65.00, 434429843, 1);
insert into hotel_quarto values (65.00, 435783493, 1);
insert into hotel_quarto values (30.00, 994834773, 1);
insert into hotel_quarto values (30.00, 342384748, 1);
insert into hotel_quarto values (35.00, 234532498, 1);
insert into hotel_quarto values (40.00, 234765283, 1);
insert into hotel_quarto values (45.00, 342874984, 1);

insert into hotel_quarto values (100.00, 231000023, 2);
insert into hotel_quarto values (120.00, 903570293, 2);
insert into hotel_quarto values (50.00, 438742500, 2);
insert into hotel_quarto values (100.00, 342897423, 2);
insert into hotel_quarto values (100.00, 012029390, 2);
insert into hotel_quarto values (70.00, 345689203, 2);
insert into hotel_quarto values (60.00, 102948573, 2);
insert into hotel_quarto values (110.00, 340009457, 2);
insert into hotel_quarto values (120.00, 123000049, 2);
insert into hotel_quarto values (100.00, 123555502, 2);
insert into hotel_quarto values (70.00, 230088890, 2);
insert into hotel_quarto values (80.00, 568882902, 2);
insert into hotel_quarto values (70.00, 123984773, 2);
insert into hotel_quarto values (120.00, 123879420, 2);
insert into hotel_quarto values (110.00, 490003298, 2);
insert into hotel_quarto values (110.00, 345299934, 2);
insert into hotel_quarto values (100.00, 430034999, 2);
insert into hotel_quarto values (100.00, 444398583, 2);
insert into hotel_quarto values (120.00, 438423984, 2);
insert into hotel_quarto values (130.00, 434429843, 2);
insert into hotel_quarto values (60.00, 994834773, 2);
insert into hotel_quarto values (60.00, 342384748, 2);
insert into hotel_quarto values (80.00, 234765283, 2);

insert into hotel_quarto values (150.00, 231000023, 3);
insert into hotel_quarto values (180.00, 903570293, 3);
insert into hotel_quarto values (75.00, 438742500, 3);
insert into hotel_quarto values (90.00, 235781239, 3);
insert into hotel_quarto values (150.00, 012029390, 3);
insert into hotel_quarto values (135.00, 100924093, 3);
insert into hotel_quarto values (90.00, 102948573, 3);
insert into hotel_quarto values (165.00, 340009457, 3);
insert into hotel_quarto values (180.00, 123000049, 3);
insert into hotel_quarto values (150.00, 123555502, 3);
insert into hotel_quarto values (105.00, 230088890, 3);
insert into hotel_quarto values (120.00, 234950002, 3);
insert into hotel_quarto values (180.00, 123879420, 3);
insert into hotel_quarto values (165.00, 490003298, 3);
insert into hotel_quarto values (150.00, 430034999, 3);
insert into hotel_quarto values (150.00, 345882390, 3);
insert into hotel_quarto values (180.00, 438423984, 3);
insert into hotel_quarto values (195.00, 434429843, 3);
insert into hotel_quarto values (195.00, 435783493, 3);
insert into hotel_quarto values (90.00, 342384748, 3);
insert into hotel_quarto values (105.00, 234532498, 3);
insert into hotel_quarto values (135.00, 342874984, 3);