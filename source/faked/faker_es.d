// generated by fakerjsgenerator
///
module faked.faker_es;

import faked.base;


///
class Faker_es : Faker {
@safe:
	import std.random;
	import std.array;
	import std.format;
	import std.conv : to;

	///
	this(int seed) {
        super(seed);
	}

	///
	override string companyNoun() {
		auto data = [
		"habilidad",
		"acceso",
		"adaptador",
		"algoritmo",
		"alianza",
		"analista",
		"aplicación",
		"enfoque",
		"arquitectura",
		"archivo",
		"inteligencia artificial",
		"array",
		"actitud",
		"medición",
		"gestión presupuestaria",
		"capacidad",
		"desafío",
		"circuito",
		"colaboración",
		"complejidad",
		"concepto",
		"conglomeración",
		"contingencia",
		"núcleo",
		"fidelidad",
		"base de datos",
		"data-warehouse",
		"definición",
		"emulación",
		"codificar",
		"encriptar",
		"extranet",
		"firmware",
		"flexibilidad",
		"focus group",
		"previsión",
		"base de trabajo",
		"función",
		"funcionalidad",
		"Interfaz Gráfica",
		"groupware",
		"Interfaz gráfico de usuario",
		"hardware",
		"Soporte",
		"jerarquía",
		"conjunto",
		"implementación",
		"infraestructura",
		"iniciativa",
		"instalación",
		"conjunto de instrucciones",
		"interfaz",
		"intranet",
		"base del conocimiento",
		"red de area local",
		"aprovechar",
		"matrices",
		"metodologías",
		"middleware",
		"migración",
		"modelo",
		"moderador",
		"monitorizar",
		"arquitectura abierta",
		"sistema abierto",
		"orquestar",
		"paradigma",
		"paralelismo",
		"política",
		"portal",
		"estructura de precios",
		"proceso de mejora",
		"producto",
		"productividad",
		"proyecto",
		"proyección",
		"protocolo",
		"línea segura",
		"software",
		"solución",
		"estandardización",
		"estrategia",
		"estructura",
		"éxito",
		"superestructura",
		"soporte",
		"sinergia",
		"mediante",
		"marco de tiempo",
		"caja de herramientas",
		"utilización",
		"website",
		"fuerza de trabajo"
		];
		return choice(data, this.rnd);
	}

	///
	override string companyAdjective() {
		auto data = [
		"Adaptativo",
		"Avanzado",
		"Asimilado",
		"Automatizado",
		"Equilibrado",
		"Centrado en el negocio",
		"Centralizado",
		"Clonado",
		"Compatible",
		"Configurable",
		"Multi grupo",
		"Multi plataforma",
		"Centrado en el usuario",
		"Configurable",
		"Descentralizado",
		"Digitalizado",
		"Distribuido",
		"Diverso",
		"Reducido",
		"Mejorado",
		"Para toda la empresa",
		"Ergonómico",
		"Exclusivo",
		"Expandido",
		"Extendido",
		"Cara a cara",
		"Enfocado",
		"Totalmente configurable",
		"Fundamental",
		"Orígenes",
		"Horizontal",
		"Implementado",
		"Innovador",
		"Integrado",
		"Intuitivo",
		"Inverso",
		"Gestionado",
		"Obligatorio",
		"Monitorizado",
		"Multi canal",
		"Multi lateral",
		"Multi capa",
		"En red",
		"Orientado a objetos",
		"Open-source",
		"Operativo",
		"Optimizado",
		"Opcional",
		"Orgánico",
		"Organizado",
		"Perseverando",
		"Persistente",
		"en fases",
		"Polarizado",
		"Pre-emptivo",
		"Proactivo",
		"Enfocado a benficios",
		"Profundo",
		"Programable",
		"Progresivo",
		"Public-key",
		"Enfocado en la calidad",
		"Reactivo",
		"Realineado",
		"Re-contextualizado",
		"Re-implementado",
		"Reducido",
		"Ingeniería inversa",
		"Robusto",
		"Fácil",
		"Seguro",
		"Auto proporciona",
		"Compartible",
		"Intercambiable",
		"Sincronizado",
		"Orientado a equipos",
		"Total",
		"Universal",
		"Mejorado",
		"Actualizable",
		"Centrado en el usuario",
		"Amigable",
		"Versatil",
		"Virtual",
		"Visionario"
		];
		return choice(data, this.rnd);
	}

	///
	override string companySuffix() {
		auto data = [
		"S.L.",
		"e Hijos",
		"S.A.",
		"Hermanos'"
		];
		return choice(data, this.rnd);
	}

	///
	override string companyDescriptor() {
		auto data = [
		"24 horas",
		"24/7",
		"3rd generación",
		"4th generación",
		"5th generación",
		"6th generación",
		"analizada",
		"asimétrica",
		"asíncrona",
		"monitorizada por red",
		"bidireccional",
		"bifurcada",
		"generada por el cliente",
		"cliente servidor",
		"coherente",
		"cohesiva",
		"compuesto",
		"sensible al contexto",
		"basado en el contexto",
		"basado en contenido",
		"dedicada",
		"generado por la demanda",
		"didactica",
		"direccional",
		"discreta",
		"dinámica",
		"potenciada",
		"acompasada",
		"ejecutiva",
		"explícita",
		"tolerante a fallos",
		"innovadora",
		"amplio ábanico",
		"global",
		"heurística",
		"alto nivel",
		"holística",
		"homogénea",
		"hibrida",
		"incremental",
		"intangible",
		"interactiva",
		"intermedia",
		"local",
		"logística",
		"maximizada",
		"metódica",
		"misión crítica",
		"móbil",
		"modular",
		"motivadora",
		"multimedia",
		"multiestado",
		"multitarea",
		"nacional",
		"basado en necesidades",
		"neutral",
		"nueva generación",
		"no-volátil",
		"orientado a objetos",
		"óptima",
		"optimizada",
		"radical",
		"tiempo real",
		"recíproca",
		"regional",
		"escalable",
		"secundaria",
		"orientada a soluciones",
		"estable",
		"estatica",
		"sistemática",
		"sistémica",
		"tangible",
		"terciaria",
		"transicional",
		"uniforme",
		"valor añadido",
		"vía web",
		"defectos cero",
		"tolerancia cero"
		];
		return choice(data, this.rnd);
	}


	override string companyName() {
		final switch(uniform(0, 5, this.rnd)) {
			case 0: return nameLastName() ~ " " ~ companySuffix();
			case 1: return nameLastName() ~ " y " ~ nameLastName();
			case 2: return nameLastName() ~ " " ~ nameLastName() ~ " " ~ companySuffix();
			case 3: return nameLastName();
			case 4: return nameLastName() ~ " y " ~ nameLastName() ~ " Asociados";
		}
	}

	///
	override string nameMaleFirstName() {
		auto data = [
		"Josep",
		"Ángel",
		"Daniel",
		"Manuel",
		"Pedro",
		"Salvador",
		"Rubén",
		"Iván",
		"Miguel",
		"Jorge",
		"Sergi",
		"Josep",
		"Ricardo",
		"Carles",
		"Jordi",
		"Manuel"
		];
		return choice(data, this.rnd);
	}

	///
	override string nameSuffix() {
		auto data = [
		"Jr.",
		"Sr.",
		"I",
		"II",
		"III",
		"IV",
		"V",
		"MD",
		"DDS",
		"PhD",
		"DVM"
		];
		return choice(data, this.rnd);
	}

	///
	override string nameLastName() {
		auto data = [
		"Abeyta",
		"Abrego",
		"Abreu",
		"Acevedo",
		"Acosta",
		"Acuña",
		"Adame",
		"Adorno",
		"Agosto",
		"Aguayo",
		"Aguilar",
		"Aguilera",
		"Aguirre",
		"Alanis",
		"Alaníz",
		"Alarcón",
		"Alba",
		"Alcalá",
		"Alcántar",
		"Alcaraz",
		"Alejandro",
		"Alemán",
		"Alfaro",
		"Alicea",
		"Almanza",
		"Almaráz",
		"Almonte",
		"Alonso",
		"Alonzo",
		"Altamirano",
		"Alva",
		"Alvarado",
		"Álvarez",
		"Amador",
		"Amaya",
		"Anaya",
		"Anguiano",
		"Angulo",
		"Aparicio",
		"Apodaca",
		"Aponte",
		"Aragón",
		"Araña",
		"Aranda",
		"Arce",
		"Archuleta",
		"Arellano",
		"Arenas",
		"Arevalo",
		"Argüello",
		"Arias",
		"Armas",
		"Armendáriz",
		"Armenta",
		"Armijo",
		"Arredondo",
		"Arreola",
		"Arriaga",
		"Arroyo",
		"Arteaga",
		"Atencio",
		"Ávalos",
		"Ávila",
		"Avilés",
		"Ayala",
		"Baca",
		"Badillo",
		"Báez",
		"Baeza",
		"Bahena",
		"Balderas",
		"Ballesteros",
		"Banda",
		"Bañuelos",
		"Barajas",
		"Barela",
		"Barragán",
		"Barraza",
		"Barrera",
		"Barreto",
		"Barrientos",
		"Barrios",
		"Batista",
		"Becerra",
		"Beltrán",
		"Benavides",
		"Benavídez",
		"Benítez",
		"Bermúdez",
		"Bernal",
		"Berríos",
		"Betancourt",
		"Blanco",
		"Bonilla",
		"Borrego",
		"Botello",
		"Bravo",
		"Briones",
		"Briseño",
		"Brito",
		"Bueno",
		"Burgos",
		"Bustamante",
		"Bustos",
		"Caballero",
		"Cabán",
		"Cabrera",
		"Cadena",
		"Caldera",
		"Calderón",
		"Calvillo",
		"Camacho",
		"Camarillo",
		"Campos",
		"Canales",
		"Candelaria",
		"Cano",
		"Cantú",
		"Caraballo",
		"Carbajal",
		"Cárdenas",
		"Cardona",
		"Carmona",
		"Carranza",
		"Carrasco",
		"Carrasquillo",
		"Carreón",
		"Carrera",
		"Carrero",
		"Carrillo",
		"Carrión",
		"Carvajal",
		"Casanova",
		"Casares",
		"Casarez",
		"Casas",
		"Casillas",
		"Castañeda",
		"Castellanos",
		"Castillo",
		"Castro",
		"Cavazos",
		"Cazares",
		"Ceballos",
		"Cedillo",
		"Ceja",
		"Centeno",
		"Cepeda",
		"Cerda",
		"Cervantes",
		"Cervántez",
		"Chacón",
		"Chapa",
		"Chavarría",
		"Chávez",
		"Cintrón",
		"Cisneros",
		"Collado",
		"Collazo",
		"Colón",
		"Colunga",
		"Concepción",
		"Contreras",
		"Cordero",
		"Córdova",
		"Cornejo",
		"Corona",
		"Coronado",
		"Corral",
		"Corrales",
		"Correa",
		"Cortés",
		"Cortéz",
		"Cotto",
		"Covarrubias",
		"Crespo",
		"Cruz",
		"Cuellar",
		"Curiel",
		"Dávila",
		"de Anda",
		"de Jesús",
		"Delacrúz",
		"Delafuente",
		"Delagarza",
		"Delao",
		"Delapaz",
		"Delarosa",
		"Delatorre",
		"Deleón",
		"Delgadillo",
		"Delgado",
		"Delrío",
		"Delvalle",
		"Díaz",
		"Domínguez",
		"Duarte",
		"Dueñas",
		"Durán",
		"Echevarría",
		"Elizondo",
		"Enríquez",
		"Escalante",
		"Escamilla",
		"Escobar",
		"Escobedo",
		"Esparza",
		"Espinal",
		"Espino",
		"Espinosa",
		"Espinoza",
		"Esquibel",
		"Esquivel",
		"Estévez",
		"Estrada",
		"Fajardo",
		"Farías",
		"Feliciano",
		"Fernández",
		"Ferrer",
		"Fierro",
		"Figueroa",
		"Flores",
		"Flórez",
		"Fonseca",
		"Frías",
		"Fuentes",
		"Gaitán",
		"Galarza",
		"Galindo",
		"Gallardo",
		"Gallegos",
		"Galván",
		"Gálvez",
		"Gamboa",
		"Gámez",
		"Gaona",
		"Garay",
		"García",
		"Garibay",
		"Garica",
		"Garrido",
		"Garza",
		"Gastélum",
		"Gaytán",
		"Gil",
		"Girón",
		"Godínez",
		"Godoy",
		"Gómez",
		"González",
		"Gracia",
		"Granado",
		"Granados",
		"Griego",
		"Grijalva",
		"Guajardo",
		"Guardado",
		"Guerra",
		"Guerrero",
		"Guevara",
		"Guillén",
		"Gurule",
		"Gutiérrez",
		"Guzmán",
		"Haro",
		"Henríquez",
		"Heredia",
		"Hernández",
		"Herrera",
		"Hidalgo",
		"Hinojosa",
		"Holguín",
		"Huerta",
		"Hurtado",
		"Ibarra",
		"Iglesias",
		"Irizarry",
		"Jaime",
		"Jaimes",
		"Jáquez",
		"Jaramillo",
		"Jasso",
		"Jiménez",
		"Juárez",
		"Jurado",
		"Laboy",
		"Lara",
		"Laureano",
		"Leal",
		"Lebrón",
		"Ledesma",
		"Leiva",
		"Lemus",
		"León",
		"Lerma",
		"Leyva",
		"Limón",
		"Linares",
		"Lira",
		"Llamas",
		"Loera",
		"Lomeli",
		"Longoria",
		"López",
		"Lovato",
		"Loya",
		"Lozada",
		"Lozano",
		"Lucero",
		"Lucio",
		"Luevano",
		"Lugo",
		"Luna",
		"Macías",
		"Madera",
		"Madrid",
		"Madrigal",
		"Maestas",
		"Magaña",
		"Malave",
		"Maldonado",
		"Manzanares",
		"Mares",
		"Marín",
		"Márquez",
		"Marrero",
		"Marroquín",
		"Martínez",
		"Mascareñas",
		"Mata",
		"Mateo",
		"Matías",
		"Matos",
		"Maya",
		"Mayorga",
		"Medina",
		"Medrano",
		"Mejía",
		"Meléndez",
		"Melgar",
		"Mena",
		"Menchaca",
		"Méndez",
		"Mendoza",
		"Menéndez",
		"Meraz",
		"Mercado",
		"Merino",
		"Mesa",
		"Meza",
		"Miramontes",
		"Miranda",
		"Mireles",
		"Mojica",
		"Molina",
		"Mondragón",
		"Monroy",
		"Montalvo",
		"Montañez",
		"Montaño",
		"Montemayor",
		"Montenegro",
		"Montero",
		"Montes",
		"Montéz",
		"Montoya",
		"Mora",
		"Morales",
		"Moreno",
		"Mota",
		"Moya",
		"Munguía",
		"Muñiz",
		"Muñoz",
		"Murillo",
		"Muro",
		"Nájera",
		"Naranjo",
		"Narváez",
		"Nava",
		"Navarrete",
		"Navarro",
		"Nazario",
		"Negrete",
		"Negrón",
		"Nevárez",
		"Nieto",
		"Nieves",
		"Niño",
		"Noriega",
		"Núñez",
		"Ocampo",
		"Ocasio",
		"Ochoa",
		"Ojeda",
		"Olivares",
		"Olivárez",
		"Olivas",
		"Olivera",
		"Olivo",
		"Olmos",
		"Olvera",
		"Ontiveros",
		"Oquendo",
		"Ordóñez",
		"Orellana",
		"Ornelas",
		"Orosco",
		"Orozco",
		"Orta",
		"Ortega",
		"Ortiz",
		"Osorio",
		"Otero",
		"Ozuna",
		"Pabón",
		"Pacheco",
		"Padilla",
		"Padrón",
		"Páez",
		"Pagan",
		"Palacios",
		"Palomino",
		"Palomo",
		"Pantoja",
		"Paredes",
		"Parra",
		"Partida",
		"Patiño",
		"Paz",
		"Pedraza",
		"Pedroza",
		"Pelayo",
		"Peña",
		"Perales",
		"Peralta",
		"Perea",
		"Pérez",
		"Pichardo",
		"Piña",
		"Pineda",
		"Pizarro",
		"Polanco",
		"Ponce",
		"Porras",
		"Portillo",
		"Posada",
		"Prado",
		"Preciado",
		"Prieto",
		"Puente",
		"Puga",
		"Pulido",
		"Quesada",
		"Quezada",
		"Quiñones",
		"Quiñónez",
		"Quintana",
		"Quintanilla",
		"Quintero",
		"Quiróz",
		"Rael",
		"Ramírez",
		"Ramos",
		"Rangel",
		"Rascón",
		"Raya",
		"Razo",
		"Regalado",
		"Rendón",
		"Rentería",
		"Reséndez",
		"Reyes",
		"Reyna",
		"Reynoso",
		"Rico",
		"Rincón",
		"Riojas",
		"Ríos",
		"Rivas",
		"Rivera",
		"Rivero",
		"Robledo",
		"Robles",
		"Rocha",
		"Rodarte",
		"Rodríguez",
		"Rojas",
		"Rojo",
		"Roldán",
		"Rolón",
		"Romero",
		"Romo",
		"Roque",
		"Rosado",
		"Rosales",
		"Rosario",
		"Rosas",
		"Roybal",
		"Rubio",
		"Ruelas",
		"Ruíz",
		"Saavedra",
		"Sáenz",
		"Saiz",
		"Salas",
		"Salazar",
		"Salcedo",
		"Salcido",
		"Saldaña",
		"Saldivar",
		"Salgado",
		"Salinas",
		"Samaniego",
		"Sanabria",
		"Sánchez",
		"Sandoval",
		"Santacruz",
		"Santana",
		"Santiago",
		"Santillán",
		"Sarabia",
		"Sauceda",
		"Saucedo",
		"Sedillo",
		"Segovia",
		"Segura",
		"Sepúlveda",
		"Serna",
		"Serrano",
		"Serrato",
		"Sevilla",
		"Sierra",
		"Sisneros",
		"Solano",
		"Solís",
		"Soliz",
		"Solorio",
		"Solorzano",
		"Soria",
		"Sosa",
		"Sotelo",
		"Soto",
		"Suárez",
		"Tafoya",
		"Tamayo",
		"Tamez",
		"Tapia",
		"Tejada",
		"Tejeda",
		"Téllez",
		"Tello",
		"Terán",
		"Terrazas",
		"Tijerina",
		"Tirado",
		"Toledo",
		"Toro",
		"Torres",
		"Tórrez",
		"Tovar",
		"Trejo",
		"Treviño",
		"Trujillo",
		"Ulibarri",
		"Ulloa",
		"Urbina",
		"Ureña",
		"Urías",
		"Uribe",
		"Urrutia",
		"Vaca",
		"Valadez",
		"Valdés",
		"Valdez",
		"Valdivia",
		"Valencia",
		"Valentín",
		"Valenzuela",
		"Valladares",
		"Valle",
		"Vallejo",
		"Valles",
		"Valverde",
		"Vanegas",
		"Varela",
		"Vargas",
		"Vázquez",
		"Vega",
		"Vela",
		"Velasco",
		"Velásquez",
		"Velázquez",
		"Vélez",
		"Véliz",
		"Venegas",
		"Vera",
		"Verdugo",
		"Verduzco",
		"Vergara",
		"Viera",
		"Vigil",
		"Villa",
		"Villagómez",
		"Villalobos",
		"Villalpando",
		"Villanueva",
		"Villarreal",
		"Villaseñor",
		"Villegas",
		"Yáñez",
		"Ybarra",
		"Zambrano",
		"Zamora",
		"Zamudio",
		"Zapata",
		"Zaragoza",
		"Zarate",
		"Zavala",
		"Zayas",
		"Zelaya",
		"Zepeda",
		"Zúñiga"
		];
		return choice(data, this.rnd);
	}

	///
	override string nameFirstName() {
		auto data = [
		"Adán",
		"Agustín",
		"Alberto",
		"Alejandro",
		"Alfonso",
		"Alfredo",
		"Andrés",
		"Antonio",
		"Armando",
		"Arturo",
		"Benito",
		"Benjamín",
		"Bernardo",
		"Carlos",
		"César",
		"Claudio",
		"Clemente",
		"Cristián",
		"Cristóbal",
		"Daniel",
		"David",
		"Diego",
		"Eduardo",
		"Emilio",
		"Enrique",
		"Ernesto",
		"Esteban",
		"Federico",
		"Felipe",
		"Fernando",
		"Francisco",
		"Gabriel",
		"Gerardo",
		"Germán",
		"Gilberto",
		"Gonzalo",
		"Gregorio",
		"Guillermo",
		"Gustavo",
		"Hernán",
		"Homero",
		"Horacio",
		"Hugo",
		"Ignacio",
		"Jacobo",
		"Jaime",
		"Javier",
		"Jerónimo",
		"Jesús",
		"Joaquín",
		"Jorge",
		"Jorge Luis",
		"José",
		"José Eduardo",
		"José Emilio",
		"José Luis",
		"José María",
		"Juan",
		"Juan Carlos",
		"Julio",
		"Julio César",
		"Lorenzo",
		"Lucas",
		"Luis",
		"Luis Miguel",
		"Manuel",
		"Marco Antonio",
		"Marcos",
		"Mariano",
		"Mario",
		"Martín",
		"Mateo",
		"Miguel",
		"Miguel Ángel",
		"Nicolás",
		"Octavio",
		"Óscar",
		"Pablo",
		"Patricio",
		"Pedro",
		"Rafael",
		"Ramiro",
		"Ramón",
		"Raúl",
		"Ricardo",
		"Roberto",
		"Rodrigo",
		"Rubén",
		"Salvador",
		"Samuel",
		"Sancho",
		"Santiago",
		"Sergio",
		"Teodoro",
		"Timoteo",
		"Tomás",
		"Vicente",
		"Víctor",
		"Adela",
		"Adriana",
		"Alejandra",
		"Alicia",
		"Amalia",
		"Ana",
		"Ana Luisa",
		"Ana María",
		"Andrea",
		"Anita",
		"Ángela",
		"Antonia",
		"Ariadna",
		"Barbara",
		"Beatriz",
		"Berta",
		"Blanca",
		"Caridad",
		"Carla",
		"Carlota",
		"Carmen",
		"Carolina",
		"Catalina",
		"Cecilia",
		"Clara",
		"Claudia",
		"Concepción",
		"Conchita",
		"Cristina",
		"Daniela",
		"Débora",
		"Diana",
		"Dolores",
		"Lola",
		"Dorotea",
		"Elena",
		"Elisa",
		"Eloisa",
		"Elsa",
		"Elvira",
		"Emilia",
		"Esperanza",
		"Estela",
		"Ester",
		"Eva",
		"Florencia",
		"Francisca",
		"Gabriela",
		"Gloria",
		"Graciela",
		"Guadalupe",
		"Guillermina",
		"Inés",
		"Irene",
		"Isabel",
		"Isabela",
		"Josefina",
		"Juana",
		"Julia",
		"Laura",
		"Leonor",
		"Leticia",
		"Lilia",
		"Lorena",
		"Lourdes",
		"Lucía",
		"Luisa",
		"Luz",
		"Magdalena",
		"Manuela",
		"Marcela",
		"Margarita",
		"María",
		"María del Carmen",
		"María Cristina",
		"María Elena",
		"María Eugenia",
		"María José",
		"María Luisa",
		"María Soledad",
		"María Teresa",
		"Mariana",
		"Maricarmen",
		"Marilú",
		"Marisol",
		"Marta",
		"Mayte",
		"Mercedes",
		"Micaela",
		"Mónica",
		"Natalia",
		"Norma",
		"Olivia",
		"Patricia",
		"Pilar",
		"Ramona",
		"Raquel",
		"Rebeca",
		"Reina",
		"Rocío",
		"Rosa",
		"Rosalia",
		"Rosario",
		"Sara",
		"Silvia",
		"Sofía",
		"Soledad",
		"Sonia",
		"Susana",
		"Teresa",
		"Verónica",
		"Victoria",
		"Virginia",
		"Yolanda"
		];
		return choice(data, this.rnd);
	}


	override string nameName() {
		final switch(uniform(0, 5, this.rnd)) {
			case 0: return namePrefix() ~ " " ~ nameFirstName() ~ " " ~ nameLastName() ~ " " ~ nameLastName();
			case 1: return nameFirstName() ~ " " ~ nameLastName() ~ " " ~ nameLastName();
			case 2: return nameFirstName() ~ " " ~ nameLastName() ~ " " ~ nameLastName();
			case 3: return nameFirstName() ~ " " ~ nameLastName() ~ " " ~ nameLastName();
			case 4: return nameFirstName() ~ " " ~ nameLastName() ~ " " ~ nameLastName();
		}
	}

	///
	override string nameFemaleFirstName() {
		auto data = [
		"Marta",
		"Andrea",
		"Ana",
		"Anni",
		"Laura",
		"Maica",
		"Laura",
		"Lorena",
		"Matilde",
		"Jennifer",
		"Roser"
		];
		return choice(data, this.rnd);
	}

	///
	override string namePrefix() {
		auto data = [
		"Sr.",
		"Sra.",
		"Sta.'"
		];
		return choice(data, this.rnd);
	}

	///
	override string commerceDepartment() {
		auto data = [
		"Librería",
		"Deportes",
		"Videojuegos",
		"Electrónica",
		"Moda",
		"Joyería",
		"Marroquinería",
		"Juguetería",
		"Mascotas",
		"Bebes",
		"Bricolaje",
		"Informática",
		"Salud",
		"Parafarmacia",
		"Papelería",
		"Cine",
		"Música",
		"Hogar",
		"Decoración"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressStateAbbr() {
		auto data = [
		"And",
		"Ara",
		"Ast",
		"Bal",
		"Can",
		"Cbr",
		"Man",
		"Leo",
		"Cat",
		"Com",
		"Ext",
		"Gal",
		"Rio",
		"Mad",
		"Nav",
		"Vas",
		"Mur"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressState() {
		auto data = [
		"Andalucía",
		"Aragón",
		"Principado de Asturias",
		"Baleares",
		"Canarias",
		"Cantabria",
		"Castilla-La Mancha",
		"Castilla y León",
		"Cataluña",
		"Comunidad Valenciana",
		"Extremadura",
		"Galicia",
		"La Rioja",
		"Comunidad de Madrid",
		"Navarra",
		"País Vasco",
		"Región de Murcia"
		];
		return choice(data, this.rnd);
	}

	///
	string addressProvince() {
		auto data = [
		"Álava",
		"Albacete",
		"Alicante",
		"Almería",
		"Asturias",
		"Ávila",
		"Badajoz",
		"Barcelona",
		"Burgos",
		"Cantabria",
		"Castellón",
		"Ciudad Real",
		"Cuenca",
		"Cáceres",
		"Cádiz",
		"Córdoba",
		"Gerona",
		"Granada",
		"Guadalajara",
		"Guipúzcoa",
		"Huelva",
		"Huesca",
		"Islas Baleares",
		"Jaén",
		"La Coruña",
		"La Rioja",
		"Las Palmas",
		"León",
		"Lugo",
		"lérida",
		"Madrid",
		"Murcia",
		"Málaga",
		"Navarra",
		"Orense",
		"Palencia",
		"Pontevedra",
		"Salamanca",
		"Santa Cruz de Tenerife",
		"Segovia",
		"Sevilla",
		"Soria",
		"Tarragona",
		"Teruel",
		"Toledo",
		"Valencia",
		"Valladolid",
		"Vizcaya",
		"Zamora",
		"Zaragoza"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressCountry() {
		auto data = [
		"Afganistán",
		"Albania",
		"Argelia",
		"Andorra",
		"Angola",
		"Argentina",
		"Armenia",
		"Aruba",
		"Australia",
		"Austria",
		"Azerbayán",
		"Bahamas",
		"Barein",
		"Bangladesh",
		"Barbados",
		"Bielorusia",
		"Bélgica",
		"Belice",
		"Bermuda",
		"Bután",
		"Bolivia",
		"Bosnia Herzegovina",
		"Botswana",
		"Brasil",
		"Bulgaria",
		"Burkina Faso",
		"Burundi",
		"Camboya",
		"Camerún",
		"Canada",
		"Cabo Verde",
		"Islas Caimán",
		"Chad",
		"Chile",
		"China",
		"Isla de Navidad",
		"Colombia",
		"Comodos",
		"Congo",
		"Costa Rica",
		"Costa de Marfil",
		"Croacia",
		"Cuba",
		"Chipre",
		"República Checa",
		"Dinamarca",
		"Dominica",
		"República Dominicana",
		"Ecuador",
		"Egipto",
		"El Salvador",
		"Guinea Ecuatorial",
		"Eritrea",
		"Estonia",
		"Etiopía",
		"Islas Faro",
		"Fiji",
		"Finlandia",
		"Francia",
		"Gabón",
		"Gambia",
		"Georgia",
		"Alemania",
		"Ghana",
		"Grecia",
		"Groenlandia",
		"Granada",
		"Guadalupe",
		"Guam",
		"Guatemala",
		"Guinea",
		"Guinea-Bisau",
		"Guayana",
		"Haiti",
		"Honduras",
		"Hong Kong",
		"Hungria",
		"Islandia",
		"India",
		"Indonesia",
		"Iran",
		"Irak",
		"Irlanda",
		"Italia",
		"Jamaica",
		"Japón",
		"Jordania",
		"Kazajistan",
		"Kenia",
		"Kiribati",
		"Corea",
		"Kuwait",
		"Letonia",
		"Líbano",
		"Liberia",
		"Liechtenstein",
		"Lituania",
		"Luxemburgo",
		"Macao",
		"Macedonia",
		"Madagascar",
		"Malawi",
		"Malasia",
		"Maldivas",
		"Mali",
		"Malta",
		"Martinica",
		"Mauritania",
		"Méjico",
		"Micronesia",
		"Moldavia",
		"Mónaco",
		"Mongolia",
		"Montenegro",
		"Montserrat",
		"Marruecos",
		"Mozambique",
		"Namibia",
		"Nauru",
		"Nepal",
		"Holanda",
		"Nueva Zelanda",
		"Nicaragua",
		"Niger",
		"Nigeria",
		"Noruega",
		"Omán",
		"Pakistan",
		"Panamá",
		"Papúa Nueva Guinea",
		"Paraguay",
		"Perú",
		"Filipinas",
		"Poland",
		"Portugal",
		"Puerto Rico",
		"Rusia",
		"Ruanda",
		"Samoa",
		"San Marino",
		"Santo Tomé y Principe",
		"Arabia Saudí",
		"Senegal",
		"Serbia",
		"Seychelles",
		"Sierra Leona",
		"Singapur",
		"Eslovaquia",
		"Eslovenia",
		"Somalia",
		"España",
		"Sri Lanka",
		"Sudán",
		"Suriname",
		"Suecia",
		"Suiza",
		"Siria",
		"Taiwan",
		"Tajikistan",
		"Tanzania",
		"Tailandia",
		"Timor-Leste",
		"Togo",
		"Tonga",
		"Trinidad y Tobago",
		"Tunez",
		"Turquia",
		"Uganda",
		"Ucrania",
		"Emiratos Árabes Unidos",
		"Reino Unido",
		"Estados Unidos de América",
		"Uruguay",
		"Uzbekistan",
		"Vanuatu",
		"Venezuela",
		"Vietnam",
		"Yemen",
		"Zambia",
		"Zimbabwe"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressDefaultCountry() {
		auto data = [
		"España'"
		];
		return choice(data, this.rnd);
	}


	override string addressStreetAddress() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return "normal: '" ~ addressStreet() ~ addressBuildingNumber();
			case 1: return "full: '" ~ addressStreet() ~ addressBuildingNumber() ~ " " ~ addressSecondaryAddress();
		}
	}

	///
	override string addressCityPrefix() {
		auto data = [
		"Parla",
		"Telde",
		"Baracaldo",
		"San Fernando",
		"Torrevieja",
		"Lugo",
		"Santiago de Compostela",
		"Gerona",
		"Cáceres",
		"Lorca",
		"Coslada",
		"Talavera de la Reina",
		"El Puerto de Santa María",
		"Cornellá de Llobregat",
		"Avilés",
		"Palencia",
		"Gecho",
		"Orihuela",
		"Pontevedra",
		"Pozuelo de Alarcón",
		"Toledo",
		"El Ejido",
		"Guadalajara",
		"Gandía",
		"Ceuta",
		"Ferrol",
		"Chiclana de la Frontera",
		"Manresa",
		"Roquetas de Mar",
		"Ciudad Real",
		"Rubí",
		"Benidorm",
		"San Sebastían de los Reyes",
		"Ponferrada",
		"Zamora",
		"Alcalá de Guadaira",
		"Fuengirola",
		"Mijas",
		"Sanlúcar de Barrameda",
		"La Línea de la Concepción",
		"Majadahonda",
		"Sagunto",
		"El Prat de LLobregat",
		"Viladecans",
		"Linares",
		"Alcoy",
		"Irún",
		"Estepona",
		"Torremolinos",
		"Rivas-Vaciamadrid",
		"Molina de Segura",
		"Paterna",
		"Granollers",
		"Santa Lucía de Tirajana",
		"Motril",
		"Cerdañola del Vallés",
		"Arrecife",
		"Segovia",
		"Torrelavega",
		"Elda",
		"Mérida",
		"Ávila",
		"Valdemoro",
		"Cuenta",
		"Collado Villalba",
		"Benalmádena",
		"Mollet del Vallés",
		"Puertollano",
		"Madrid",
		"Barcelona",
		"Valencia",
		"Sevilla",
		"Zaragoza",
		"Málaga",
		"Murcia",
		"Palma de Mallorca",
		"Las Palmas de Gran Canaria",
		"Bilbao",
		"Córdoba",
		"Alicante",
		"Valladolid",
		"Vigo",
		"Gijón",
		"Hospitalet de LLobregat",
		"La Coruña",
		"Granada",
		"Vitoria",
		"Elche",
		"Santa Cruz de Tenerife",
		"Oviedo",
		"Badalona",
		"Cartagena",
		"Móstoles",
		"Jerez de la Frontera",
		"Tarrasa",
		"Sabadell",
		"Alcalá de Henares",
		"Pamplona",
		"Fuenlabrada",
		"Almería",
		"San Sebastián",
		"Leganés",
		"Santander",
		"Burgos",
		"Castellón de la Plana",
		"Alcorcón",
		"Albacete",
		"Getafe",
		"Salamanca",
		"Huelva",
		"Logroño",
		"Badajoz",
		"San Cristróbal de la Laguna",
		"León",
		"Tarragona",
		"Cádiz",
		"Lérida",
		"Marbella",
		"Mataró",
		"Dos Hermanas",
		"Santa Coloma de Gramanet",
		"Jaén",
		"Algeciras",
		"Torrejón de Ardoz",
		"Orense",
		"Alcobendas",
		"Reus",
		"Calahorra",
		"Inca"
		];
		return choice(data, this.rnd);
	}


	override string addressStreet() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return addressStreetSuffix() ~ " " ~ nameFirstName();
			case 1: return addressStreetSuffix() ~ " " ~ nameFirstName() ~ " " ~ nameLastName();
		}
	}

	///
	override string addressTimeZone() {
		auto data = [
		"Pacífico/Midway",
		"Pacífico/Pago_Pago",
		"Pacífico/Honolulu",
		"America/Juneau",
		"America/Los_Angeles",
		"America/Tijuana",
		"America/Denver",
		"America/Phoenix",
		"America/Chihuahua",
		"America/Mazatlan",
		"America/Chicago",
		"America/Regina",
		"America/Mexico_City",
		"America/Mexico_City",
		"America/Monterrey",
		"America/Guatemala",
		"America/New_York",
		"America/Indiana/Indianapolis",
		"America/Bogota",
		"America/Lima",
		"America/Lima",
		"America/Halifax",
		"America/Caracas",
		"America/La_Paz",
		"America/Santiago",
		"America/St_Johns",
		"America/Sao_Paulo",
		"America/Argentina/Buenos_Aires",
		"America/Guyana",
		"America/Godthab",
		"Atlantic/South_Georgia",
		"Atlantic/Azores",
		"Atlantic/Cape_Verde",
		"Europa/Dublin",
		"Europa/London",
		"Europa/Lisbon",
		"Europa/London",
		"Africa/Casablanca",
		"Africa/Monrovia",
		"Etc/UTC",
		"Europa/Belgrade",
		"Europa/Bratislava",
		"Europa/Budapest",
		"Europa/Ljubljana",
		"Europa/Prague",
		"Europa/Sarajevo",
		"Europa/Skopje",
		"Europa/Warsaw",
		"Europa/Zagreb",
		"Europa/Brussels",
		"Europa/Copenhagen",
		"Europa/Madrid",
		"Europa/Paris",
		"Europa/Amsterdam",
		"Europa/Berlin",
		"Europa/Berlin",
		"Europa/Rome",
		"Europa/Stockholm",
		"Europa/Vienna",
		"Africa/Algiers",
		"Europa/Bucharest",
		"Africa/Cairo",
		"Europa/Helsinki",
		"Europa/Kiev",
		"Europa/Riga",
		"Europa/Sofia",
		"Europa/Tallinn",
		"Europa/Vilnius",
		"Europa/Athens",
		"Europa/Istanbul",
		"Europa/Minsk",
		"Asia/Jerusalen",
		"Africa/Harare",
		"Africa/Johannesburg",
		"Europa/Moscú",
		"Europa/Moscú",
		"Europa/Moscú",
		"Asia/Kuwait",
		"Asia/Riyadh",
		"Africa/Nairobi",
		"Asia/Baghdad",
		"Asia/Tehran",
		"Asia/Muscat",
		"Asia/Muscat",
		"Asia/Baku",
		"Asia/Tbilisi",
		"Asia/Yerevan",
		"Asia/Kabul",
		"Asia/Yekaterinburg",
		"Asia/Karachi",
		"Asia/Karachi",
		"Asia/Tashkent",
		"Asia/Kolkata",
		"Asia/Kolkata",
		"Asia/Kolkata",
		"Asia/Kolkata",
		"Asia/Kathmandu",
		"Asia/Dhaka",
		"Asia/Dhaka",
		"Asia/Colombo",
		"Asia/Almaty",
		"Asia/Novosibirsk",
		"Asia/Rangoon",
		"Asia/Bangkok",
		"Asia/Bangkok",
		"Asia/Jakarta",
		"Asia/Krasnoyarsk",
		"Asia/Shanghai",
		"Asia/Chongqing",
		"Asia/Hong_Kong",
		"Asia/Urumqi",
		"Asia/Kuala_Lumpur",
		"Asia/Singapore",
		"Asia/Taipei",
		"Australia/Perth",
		"Asia/Irkutsk",
		"Asia/Ulaanbaatar",
		"Asia/Seoul",
		"Asia/Tokyo",
		"Asia/Tokyo",
		"Asia/Tokyo",
		"Asia/Yakutsk",
		"Australia/Darwin",
		"Australia/Adelaide",
		"Australia/Melbourne",
		"Australia/Melbourne",
		"Australia/Sydney",
		"Australia/Brisbane",
		"Australia/Hobart",
		"Asia/Vladivostok",
		"Pacífico/Guam",
		"Pacífico/Port_Moresby",
		"Asia/Magadan",
		"Asia/Magadan",
		"Pacífico/Noumea",
		"Pacífico/Fiji",
		"Asia/Kamchatka",
		"Pacífico/Majuro",
		"Pacífico/Auckland",
		"Pacífico/Auckland",
		"Pacífico/Tongatapu",
		"Pacífico/Fakaofo",
		"Pacífico/Apia"
		];
		return choice(data, this.rnd);
	}


	override string addressCity() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return addressCityPrefix() ~ "'";
		}
	}


	override string addressBuildingNumber() {
		final switch(uniform(0, 5, this.rnd)) {
			case 0: return " s/n.";
			case 1: return "#";
			case 2: return "##";
			case 3: return " #";
			case 4: return "##'";
		}
	}

	///
	override string addressPostcode() {
		auto data = [
		"#####'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string addressSecondaryAddress() {
		auto data = [
		"Esc. ###",
		"Puerta ###'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string addressStreetSuffix() {
		auto data = [
		"Aldea",
		"Apartamento",
		"Arrabal",
		"Arroyo",
		"Avenida",
		"Bajada",
		"Barranco",
		"Barrio",
		"Bloque",
		"Calle",
		"Calleja",
		"Camino",
		"Carretera",
		"Caserio",
		"Colegio",
		"Colonia",
		"Conjunto",
		"Cuesta",
		"Chalet",
		"Edificio",
		"Entrada",
		"Escalinata",
		"Explanada",
		"Extramuros",
		"Extrarradio",
		"Ferrocarril",
		"Glorieta",
		"Gran Subida",
		"Grupo",
		"Huerta",
		"Jardines",
		"Lado",
		"Lugar",
		"Manzana",
		"Masía",
		"Mercado",
		"Monte",
		"Muelle",
		"Municipio",
		"Parcela",
		"Parque",
		"Partida",
		"Pasaje",
		"Paseo",
		"Plaza",
		"Poblado",
		"Polígono",
		"Prolongación",
		"Puente",
		"Puerta",
		"Quinta",
		"Ramal",
		"Rambla",
		"Rampa",
		"Riera",
		"Rincón",
		"Ronda",
		"Rua",
		"Salida",
		"Sector",
		"Sección",
		"Senda",
		"Solar",
		"Subida",
		"Terrenos",
		"Torrente",
		"Travesía",
		"Urbanización",
		"Vía",
		"Vía Pública"
		];
		return choice(data, this.rnd);
	}

	///
	override string colorHuman() {
		auto data = [
		"Rojo",
		"Azul",
		"Negro",
		"Gris",
		"Blanco",
		"Amarillo",
		"Verde",
		"Morado",
		"Violeta"
		];
		return choice(data, this.rnd);
	}

	///
	override string phoneNumberFormats() {
		auto data = [
		"9##-###-###",
		"9##.###.###",
		"9## ### ###",
		"9########'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string cellPhoneFormats() {
		auto data = [
		"6##-###-###",
		"6##.###.###",
		"6## ### ###",
		"6########'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string internetFreeEmail() {
		auto data = [
		"gmail.com",
		"yahoo.com",
		"hotmail.com'"
		];
		return choice(data, this.rnd);
	}

	///
	override string internetDomainSuffix() {
		auto data = [
		"com",
		"es",
		"info",
		"com.es",
		"org'"
		];
		return choice(data, this.rnd);
	}

}
