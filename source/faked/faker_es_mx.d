// generated by fakerjsgenerator
///
module faked.faker_es_mx;

import faked.base;


///
class Faker_es_mx : Faker {
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
	override string loremWords() {
		auto data = [
		"Abacalero",
		"Abacería",
		"Abacero",
		"Abacial",
		"Abaco",
		"Abacora",
		"Abacorar",
		"Abad",
		"Abada",
		"Abadejo",
		"Abadengo",
		"Abadernar",
		"Abadesa",
		"Abadí",
		"Abadía",
		"Abadiado",
		"Abadiato",
		"Abajadero",
		"Abajamiento",
		"Abajar",
		"Abajeño",
		"Abajera",
		"Abajo",
		"Abalada",
		"Abalanzar",
		"Abalar",
		"Abalaustrado",
		"Abaldonadamente",
		"Abaldonamiento",
		"Bastonada",
		"Bastonazo",
		"Bastoncillo",
		"Bastonear",
		"Bastonero",
		"Bástulo",
		"Basura",
		"Basural",
		"Basurear",
		"Basurero",
		"Bata",
		"Batacazo",
		"Batahola",
		"Batalán",
		"Batalla",
		"Batallador",
		"Batallar",
		"Batallaroso",
		"Batallola",
		"Batallón",
		"Batallona",
		"Batalloso",
		"Batán",
		"Batanar",
		"Batanear",
		"Batanero",
		"Batanga",
		"Bataola",
		"Batata",
		"Batatazo",
		"Batato",
		"Batavia",
		"Bátavo",
		"Batayola",
		"Batazo",
		"Bate",
		"Batea",
		"Bateador",
		"Bateaguas",
		"Cenagar",
		"Cenagoso",
		"Cenal",
		"Cenaoscuras",
		"Ceñar",
		"Cenata",
		"Cenca",
		"Cencapa",
		"Cencellada",
		"Cenceñada",
		"Cenceño",
		"Cencero",
		"Cencerra",
		"Cencerrada",
		"Cencerrado",
		"Cencerrear",
		"Cencerreo",
		"Cencerril",
		"Cencerrillas",
		"Cencerro",
		"Cencerrón",
		"Cencha",
		"Cencido",
		"Cencío",
		"Cencivera",
		"Cenco",
		"Cencuate",
		"Cendal",
		"Cendalí",
		"Céndea",
		"Cendolilla",
		"Cendra",
		"Cendrada",
		"Cendradilla",
		"Cendrado",
		"Cendrar",
		"Cendrazo",
		"Cenefa",
		"Cenegar",
		"Ceneque",
		"Cenero",
		"Cenestesia",
		"Desceñir",
		"Descensión",
		"Descenso",
		"Descentrado",
		"Descentralización",
		"Descentralizador",
		"Descentralizar",
		"Descentrar",
		"Descepar",
		"Descerar",
		"Descercado",
		"Descercador",
		"Descercar",
		"Descerco",
		"Descerebración",
		"Descerebrado",
		"Descerebrar",
		"Descerezar",
		"Descerrajado",
		"Descerrajadura",
		"Descerrajar",
		"Descerrar",
		"Descerrumarse",
		"Descervigamiento",
		"Descervigar",
		"Deschapar",
		"Descharchar",
		"Deschavetado",
		"Deschavetarse",
		"Deschuponar",
		"Descifrable",
		"Descifrador",
		"Desciframiento",
		"Descifrar",
		"Descifre",
		"Descimbramiento",
		"Descimbrar",
		"Engarbarse",
		"Engarberar",
		"Engarbullar",
		"Engarce",
		"Engarfiar",
		"Engargantadura",
		"Engargantar",
		"Engargante",
		"Engargolado",
		"Engargolar",
		"Engaritar",
		"Engarmarse",
		"Engarnio",
		"Engarrafador",
		"Engarrafar",
		"Engarrar",
		"Engarro",
		"Engarronar",
		"Engarrotar",
		"Engarzador",
		"Engarzadura",
		"Engarzar",
		"Engasgarse",
		"Engastador",
		"Engastadura",
		"Engastar",
		"Engaste",
		"Ficción",
		"Fice",
		"Ficha",
		"Fichaje",
		"Fichar",
		"Fichero",
		"Ficoideo",
		"Ficticio",
		"Fidalgo",
		"Fidecomiso",
		"Fidedigno",
		"Fideero",
		"Fideicomisario",
		"Fideicomiso",
		"Fideicomitente",
		"Fideísmo",
		"Fidelidad",
		"Fidelísimo",
		"Fideo",
		"Fido",
		"Fiducia",
		"Geminación",
		"Geminado",
		"Geminar",
		"Géminis",
		"Gémino",
		"Gemíparo",
		"Gemiquear",
		"Gemiqueo",
		"Gemir",
		"Gemología",
		"Gemológico",
		"Gemólogo",
		"Gemonias",
		"Gemoso",
		"Gemoterapia",
		"Gen",
		"Genciana",
		"Gencianáceo",
		"Gencianeo",
		"Gendarme",
		"Gendarmería",
		"Genealogía",
		"Genealógico",
		"Genealogista",
		"Genearca",
		"Geneático",
		"Generable",
		"Generación",
		"Generacional",
		"Generador",
		"General",
		"Generala",
		"Generalato",
		"Generalidad",
		"Generalísimo",
		"Incordio",
		"Incorporación",
		"Incorporal",
		"Incorporalmente",
		"Incorporar",
		"Incorporeidad",
		"Incorpóreo",
		"Incorporo",
		"Incorrección",
		"Incorrectamente",
		"Incorrecto",
		"Incorregibilidad",
		"Incorregible",
		"Incorregiblemente",
		"Incorrupción",
		"Incorruptamente",
		"Incorruptibilidad",
		"Incorruptible",
		"Incorrupto",
		"Incrasar",
		"Increado",
		"Incredibilidad",
		"Incrédulamente",
		"Incredulidad",
		"Incrédulo",
		"Increíble",
		"Increíblemente",
		"Incrementar",
		"Incremento",
		"Increpación",
		"Increpador",
		"Increpar",
		"Incriminación",
		"Incriminar",
		"Incristalizable",
		"Incruentamente",
		"Incruento",
		"Incrustación"
		];
		return choice(data, this.rnd);
	}

	///
	override string companyBsVerb() {
		auto data = [
		"poner en práctica",
		"utilizar",
		"integrar",
		"racionalizar",
		"optimizar",
		"evolucionar",
		"transformar",
		"abrazar",
		"habilitar",
		"orquestar",
		"apalancamiento",
		"reinventar",
		"agregado",
		"arquitecto",
		"mejorar",
		"incentivar",
		"transformarse",
		"empoderar",
		"Envisioneer",
		"monetizar",
		"arnés",
		"facilitar",
		"aprovechar",
		"desintermediar",
		"sinergia",
		"estrategias",
		"desplegar",
		"marca",
		"crecer",
		"objetivo",
		"sindicato",
		"sintetizar",
		"entregue",
		"malla",
		"incubar",
		"enganchar",
		"maximizar",
		"punto de referencia",
		"acelerar",
		"reintermediate",
		"pizarra",
		"visualizar",
		"reutilizar",
		"innovar",
		"escala",
		"desatar",
		"conducir",
		"extender",
		"ingeniero",
		"revolucionar",
		"generar",
		"explotar",
		"transición",
		"e-enable",
		"repetir",
		"cultivar",
		"matriz",
		"productize",
		"redefinir",
		"recontextualizar"
		];
		return choice(data, this.rnd);
	}

	///
	override string companyBsNoun() {
		auto data = [
		"sinergias",
		"web-readiness",
		"paradigmas",
		"mercados",
		"asociaciones",
		"infraestructuras",
		"plataformas",
		"iniciativas",
		"canales",
		"ojos",
		"comunidades",
		"ROI",
		"soluciones",
		"minoristas electrónicos",
		"e-servicios",
		"elementos de acción",
		"portales",
		"nichos",
		"tecnologías",
		"contenido",
		"vortales",
		"cadenas de suministro",
		"convergencia",
		"relaciones",
		"arquitecturas",
		"interfaces",
		"mercados electrónicos",
		"e-commerce",
		"sistemas",
		"ancho de banda",
		"infomediarios",
		"modelos",
		"Mindshare",
		"entregables",
		"usuarios",
		"esquemas",
		"redes",
		"aplicaciones",
		"métricas",
		"e-business",
		"funcionalidades",
		"experiencias",
		"servicios web",
		"metodologías"
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
		"Ergonomico",
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
		"Organico",
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
		"Ingenieria inversa",
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
	override string companyBsAdjective() {
		auto data = [
		"Clics y mortero",
		"Valor añadido",
		"Vertical",
		"Proactivo",
		"Robusto",
		"Revolucionario",
		"Escalable",
		"De vanguardia",
		"Innovador",
		"Intuitivo",
		"Estratégico",
		"E-business",
		"Misión crítica",
		"Pegajosa",
		"Doce y cincuenta y nueve de la noche",
		"24/7",
		"De extremo a extremo",
		"Global",
		"B2B",
		"B2C",
		"Granular",
		"Fricción",
		"Virtual",
		"Viral",
		"Dinámico",
		"24/365",
		"Mejor de su clase",
		"Asesino",
		"Magnética",
		"Filo sangriento",
		"Habilitado web",
		"Interactiva",
		"Punto com",
		"Sexy",
		"Back-end",
		"Tiempo real",
		"Eficiente",
		"Frontal",
		"Distribuida",
		"Sin costura",
		"Extensible",
		"Llave en mano",
		"Clase mundial",
		"Código abierto",
		"Multiplataforma",
		"Cross-media",
		"Sinérgico",
		"ladrillos y clics",
		"Fuera de la caja",
		"Empresa",
		"Integrado",
		"Impactante",
		"Inalámbrico",
		"Transparente",
		"Próxima generación",
		"Innovador",
		"User-centric",
		"Visionario",
		"A medida",
		"Ubicua",
		"Enchufa y juega",
		"Colaboración",
		"Convincente",
		"Holístico",
		"Ricos"
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
		"DVM",
		"Ing.",
		"Lic.",
		"Dr.",
		"Mtro."
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
		"Águilar",
		"Aguilera",
		"Aguirre",
		"Alanis",
		"Alaniz",
		"Alarcón",
		"Alba",
		"Alcala",
		"Alcántar",
		"Alcaraz",
		"Alejandro",
		"Alemán",
		"Alfaro",
		"Alicea",
		"Almanza",
		"Almaraz",
		"Almonte",
		"Alonso",
		"Alonzo",
		"Altamirano",
		"Alva",
		"Alvarado",
		"Alvarez",
		"Amador",
		"Amaya",
		"Anaya",
		"Anguiano",
		"Angulo",
		"Aparicio",
		"Apodaca",
		"Aponte",
		"Aragón",
		"Aranda",
		"Araña",
		"Arce",
		"Archuleta",
		"Arellano",
		"Arenas",
		"Arevalo",
		"Arguello",
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
		"Bétancourt",
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
		"Cardenas",
		"Cardona",
		"Carmona",
		"Carranza",
		"Carrasco",
		"Carrasquillo",
		"Carreón",
		"Carrera",
		"Carrero",
		"Carrillo",
		"Carrion",
		"Carvajal",
		"Casanova",
		"Casares",
		"Casárez",
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
		"Cortez",
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
		"Domínquez",
		"Duarte",
		"Dueñas",
		"Duran",
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
		"Franco",
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
		"Gamez",
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
		"Gollum",
		"Gómez",
		"Gonzales",
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
		"Guillen",
		"Gurule",
		"Gutiérrez",
		"Guzmán",
		"Haro",
		"Henríquez",
		"Heredia",
		"Hernádez",
		"Hernandes",
		"Hernández",
		"Herrera",
		"Hidalgo",
		"Hinojosa",
		"Holguín",
		"Huerta",
		"Huixtlacatl",
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
		"Jimínez",
		"Juárez",
		"Jurado",
		"Kadar rodriguez",
		"Kamal",
		"Kamat",
		"Kanaria",
		"Kanea",
		"Kanimal",
		"Kano",
		"Kanzaki",
		"Kaplan",
		"Kara",
		"Karam",
		"Karan",
		"Kardache soto",
		"Karem",
		"Karen",
		"Khalid",
		"Kindelan",
		"Koenig",
		"Korta",
		"Korta hernandez",
		"Kortajarena",
		"Kranz sans",
		"Krasnova",
		"Krauel natera",
		"Kuzmina",
		"Kyra",
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
		"Montez",
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
		"Ñañez",
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
		"Peres",
		"Pérez",
		"Pichardo",
		"Pineda",
		"Piña",
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
		"Quevedo",
		"Quezada",
		"Quinta",
		"Quintairos",
		"Quintana",
		"Quintanilla",
		"Quintero",
		"Quintero cruz",
		"Quintero de la cruz",
		"Quiñones",
		"Quiñónez",
		"Quiros",
		"Quiroz",
		"Rael",
		"Ramírez",
		"Ramón",
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
		"Rodrígez",
		"Rodríguez",
		"Rodríquez",
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
		"Ruiz",
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
		"Sanches",
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
		"Vásquez",
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
		"Villareal",
		"Villarreal",
		"Villaseñor",
		"Villegas",
		"Xacon",
		"Xairo Belmonte",
		"Xana",
		"Xenia",
		"Xiana",
		"Xicoy",
		"Yago",
		"Yami",
		"Yanes",
		"Yáñez",
		"Ybarra",
		"Yebra",
		"Yunta",
		"Zabaleta",
		"Zamarreno",
		"Zamarripa",
		"Zambrana",
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
		"Aarón",
		"Abraham",
		"Adán",
		"Agustín",
		"Alan",
		"Alberto",
		"Alejandro",
		"Alexander",
		"Alexis",
		"Alfonso",
		"Alfredo",
		"Andrés",
		"Ángel Daniel",
		"Ángel Gabriel",
		"Antonio",
		"Armando",
		"Arturo",
		"Axel",
		"Benito",
		"Benjamín",
		"Bernardo",
		"Brandon",
		"Brayan",
		"Carlos",
		"César",
		"Claudio",
		"Clemente",
		"Cristian",
		"Cristobal",
		"Damián",
		"Daniel",
		"David",
		"Diego",
		"Eduardo",
		"Elías",
		"Emiliano",
		"Emilio",
		"Emilio",
		"Emmanuel",
		"Enrique",
		"Erick",
		"Ernesto",
		"Esteban",
		"Federico",
		"Felipe",
		"Fernando",
		"Fernando Javier",
		"Francisco",
		"Francisco Javier",
		"Gabriel",
		"Gael",
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
		"Iker",
		"Isaac",
		"Isaias",
		"Israel",
		"Ivan",
		"Jacobo",
		"Jaime",
		"Javier",
		"Jerónimo",
		"Jesús",
		"Joaquín",
		"Jorge",
		"Jorge Luis",
		"José",
		"José Antonio",
		"Jose Daniel",
		"José Eduardo",
		"José Emilio",
		"José Luis",
		"José María",
		"José Miguel",
		"Juan",
		"Juan Carlos",
		"Juan Manuel",
		"Juan Pablo",
		"Julio",
		"Julio César",
		"Kevin",
		"Leonardo",
		"Lorenzo",
		"Lucas",
		"Luis",
		"Luis Ángel",
		"Luis Fernando",
		"Luis Gabino",
		"Luis Miguel",
		"Manuel",
		"Marco Antonio",
		"Marcos",
		"Mariano",
		"Mario",
		"Martín",
		"Mateo",
		"Matías",
		"Mauricio",
		"Maximiliano",
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
		"Saúl",
		"Sebastian",
		"Sergio",
		"Tadeo",
		"Teodoro",
		"Timoteo",
		"Tomás",
		"Uriel",
		"Vicente",
		"Víctor",
		"Victor Manuel",
		"Adriana",
		"Alejandra",
		"Alicia",
		"Amalia",
		"Ana",
		"Ana Luisa",
		"Ana María",
		"Andrea",
		"Ángela",
		"Anita",
		"Antonia",
		"Araceli",
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
		"Dorotea",
		"Elena",
		"Elisa",
		"Elizabeth",
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
		"Lola",
		"Lorena",
		"Lourdes",
		"Lucia",
		"Luisa",
		"Luz",
		"Magdalena",
		"Manuela",
		"Marcela",
		"Margarita",
		"María",
		"María Cristina",
		"María de Jesús",
		"María de los Ángeles",
		"María del Carmen",
		"María Elena",
		"María Eugenia",
		"María Guadalupe",
		"María José",
		"María Luisa",
		"María Soledad",
		"María Teresa",
		"Mariana",
		"Maricarmen",
		"Marilu",
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
		"Rocio",
		"Rosa",
		"Rosa María",
		"Rosalia",
		"Rosario",
		"Sara",
		"Silvia",
		"Sofia",
		"Soledad",
		"Sonia",
		"Susana",
		"Teresa",
		"Verónica",
		"Victoria",
		"Virginia",
		"Xochitl",
		"Yolanda",
		"Abigail",
		"Abril",
		"Adela",
		"Alexa",
		"Alondra Romina",
		"Ana Sofía",
		"Ana Victoria",
		"Camila",
		"Carolina",
		"Daniela",
		"Dulce María",
		"Emily",
		"Esmeralda",
		"Estefanía",
		"Evelyn",
		"Fatima",
		"Ivanna",
		"Jazmin",
		"Jennifer",
		"Jimena",
		"Julieta",
		"Kimberly",
		"Liliana",
		"Lizbeth",
		"María Fernanda",
		"Melany",
		"Melissa",
		"Miranda",
		"Monserrat",
		"Naomi",
		"Natalia",
		"Nicole",
		"Paola",
		"Paulina",
		"Regina",
		"Renata",
		"Valentina",
		"Valeria",
		"Vanessa",
		"Ximena",
		"Ximena Guadalupe",
		"Yamileth",
		"Yaretzi",
		"Zoe"
		];
		return choice(data, this.rnd);
	}

	///
	override string commerceDepartment() {
		auto data = [
		"Libros",
		"Películas",
		"Música",
		"Juegos",
		"Electrónica",
		"Ordenadores",
		"Hogar",
		"Jardín",
		"Herramientas",
		"Ultramarinos",
		"Salud",
		"Belleza",
		"Juguetes",
		"Kids",
		"Baby",
		"Ropa",
		"Zapatos",
		"Joyería",
		"Deportes",
		"Aire libre",
		"Automoción",
		"Industrial"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressStateAbbr() {
		auto data = [
		"AS",
		"BC",
		"BS",
		"CC",
		"CS",
		"CH",
		"CL",
		"CM",
		"DF",
		"DG",
		"GT",
		"GR",
		"HG",
		"JC",
		"MC",
		"MN",
		"MS",
		"NT",
		"NL",
		"OC",
		"PL",
		"QT",
		"QR",
		"SP",
		"SL",
		"SR",
		"TC",
		"TS",
		"TL",
		"VZ",
		"YN",
		"ZS"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressState() {
		auto data = [
		"Aguascalientes",
		"Baja California Norte",
		"Baja California Sur",
		"Estado de México",
		"Campeche",
		"Chiapas",
		"Chihuahua",
		"Coahuila",
		"Colima",
		"Durango",
		"Guanajuato",
		"Guerrero",
		"Hidalgo",
		"Jalisco",
		"Michoacan",
		"Morelos",
		"Nayarit",
		"Nuevo León",
		"Oaxaca",
		"Puebla",
		"Querétaro",
		"Quintana Roo",
		"San Luis Potosí",
		"Sinaloa",
		"Sonora",
		"Tabasco",
		"Tamaulipas",
		"Tlaxcala",
		"Veracruz",
		"Yucatán",
		"Zacatecas"
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
		"México",
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
		"México'"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressCitySuffix() {
		auto data = [
		"town",
		"ton",
		"land",
		"ville",
		"berg",
		"burgh",
		"borough",
		"bury",
		"view",
		"port",
		"mouth",
		"stad",
		"furt",
		"chester",
		"mouth",
		"fort",
		"haven",
		"side",
		"shire"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressCityPrefix() {
		auto data = [
		"Aguascalientes",
		"Apodaca",
		"Buenavista",
		"Campeche",
		"Cancún",
		"Cárdenas",
		"Celaya",
		"Chalco",
		"Chetumal",
		"Chicoloapan",
		"Chignahuapan",
		"Chihuahua",
		"Chilpancingo",
		"Chimalhuacán",
		"Ciudad Acuña",
		"Ciudad de México",
		"Ciudad del Carmen",
		"Ciudad López Mateos",
		"Ciudad Madero",
		"Ciudad Obregón",
		"Ciudad Valles",
		"Ciudad Victoria",
		"Coatzacoalcos",
		"Colima-Villa de Álvarez",
		"Comitán de Dominguez",
		"Córdoba",
		"Cuautitlán Izcalli",
		"Cuautla",
		"Cuernavaca",
		"Culiacán",
		"Delicias",
		"Durango",
		"Ensenada",
		"Fresnillo",
		"General Escobedo",
		"Gómez Palacio",
		"Guadalajara",
		"Guadalupe",
		"Guanajuato",
		"Guaymas",
		"Hermosillo",
		"Hidalgo del Parral",
		"Iguala",
		"Irapuato",
		"Ixtapaluca",
		"Jiutepec",
		"Juárez",
		"La Laguna",
		"La Paz",
		"La Piedad-Pénjamo",
		"León",
		"Los Cabos",
		"Los Mochis",
		"Manzanillo",
		"Matamoros",
		"Mazatlán",
		"Mérida",
		"Mexicali",
		"Minatitlán",
		"Miramar",
		"Monclova",
		"Monclova-Frontera",
		"Monterrey",
		"Morelia",
		"Naucalpan de Juárez",
		"Navojoa",
		"Nezahualcóyotl",
		"Nogales",
		"Nuevo Laredo",
		"Oaxaca",
		"Ocotlán",
		"Ojo de agua",
		"Orizaba",
		"Pachuca",
		"Piedras Negras",
		"Poza Rica",
		"Puebla",
		"Puerto Vallarta",
		"Querétaro",
		"Reynosa-Río Bravo",
		"Rioverde-Ciudad Fernández",
		"Salamanca",
		"Saltillo",
		"San Cristobal de las Casas",
		"San Francisco Coacalco",
		"San Francisco del Rincón",
		"San Juan Bautista Tuxtepec",
		"San Juan del Río",
		"San Luis Potosí-Soledad",
		"San Luis Río Colorado",
		"San Nicolás de los Garza",
		"San Pablo de las Salinas",
		"San Pedro Garza García",
		"Santa Catarina",
		"Soledad de Graciano Sánchez",
		"Tampico-Pánuco",
		"Tapachula",
		"Tecomán",
		"Tehuacán",
		"Tehuacán",
		"Tehuantepec-Salina Cruz",
		"Tepexpan",
		"Tepic",
		"Tetela de Ocampo",
		"Texcoco de Mora",
		"Tijuana",
		"Tlalnepantla",
		"Tlaquepaque",
		"Tlaxcala-Apizaco",
		"Toluca",
		"Tonalá",
		"Torreón",
		"Tula",
		"Tulancingo",
		"Tulancingo de Bravo",
		"Tuxtla Gutiérrez",
		"Uruapan",
		"Uruapan del Progreso",
		"Valle de México",
		"Veracruz",
		"Villa de Álvarez",
		"Villa Nicolás Romero",
		"Villahermosa",
		"Xalapa",
		"Zacatecas-Guadalupe",
		"Zacatlan",
		"Zacatzingo",
		"Zamora-Jacona",
		"Zapopan",
		"Zitacuaro"
		];
		return choice(data, this.rnd);
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

	///
	string addressStreetName() {
		auto data = [
		"20 de Noviembre",
		"Cinco de Mayo",
		"Cuahutemoc",
		"Manzanares",
		"Donceles",
		"Francisco I. Madero",
		"Juárez",
		"Repúplica de Cuba",
		"Repúplica de Chile",
		"Repúplica de Argentina",
		"Repúplica de Uruguay",
		"Isabel la Católica",
		"Izazaga",
		"Eje Central",
		"Eje 6",
		"Eje 5",
		"La viga",
		"Aniceto Ortega",
		"Miguel Ángel de Quevedo",
		"Amores",
		"Coyoacán",
		"Coruña",
		"Batalla de Naco",
		"La otra banda",
		"Piedra del Comal",
		"Balcón de los edecanes",
		"Barrio la Lonja",
		"Jicolapa",
		"Zacatlán",
		"Zapata",
		"Polotitlan",
		"Calimaya",
		"Flor Marina",
		"Flor Solvestre",
		"San Miguel",
		"Naranjo",
		"Cedro",
		"Jalisco",
		"Avena"
		];
		return choice(data, this.rnd);
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
		"Puerta ###",
		"Edificio #'"
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
		"rojo",
		"verde",
		"azul",
		"amarillo",
		"morado",
		"Menta verde",
		"teal",
		"blanco",
		"negro",
		"Naranja",
		"Rosa",
		"gris",
		"marrón",
		"violeta",
		"turquesa",
		"tan",
		"cielo azul",
		"salmón",
		"ciruela",
		"orquídea",
		"aceituna",
		"magenta",
		"Lima",
		"marfil",
		"índigo",
		"oro",
		"fucsia",
		"cian",
		"azul",
		"lavanda",
		"plata"
		];
		return choice(data, this.rnd);
	}

	///
	override string teamCreature() {
		auto data = [
		"hormigas",
		"murciélagos",
		"osos",
		"abejas",
		"pájaros",
		"búfalo",
		"gatos",
		"pollos",
		"ganado",
		"perros",
		"delfines",
		"patos",
		"elefantes",
		"peces",
		"zorros",
		"ranas",
		"gansos",
		"cabras",
		"caballos",
		"canguros",
		"leones",
		"monos",
		"búhos",
		"bueyes",
		"pingüinos",
		"pueblo",
		"cerdos",
		"conejos",
		"ovejas",
		"tigres",
		"ballenas",
		"lobos",
		"cebras",
		"almas en pena",
		"cuervos",
		"gatos negros",
		"quimeras",
		"fantasmas",
		"conspiradores",
		"dragones",
		"enanos",
		"duendes",
		"encantadores",
		"exorcistas",
		"hijos",
		"enemigos",
		"gigantes",
		"gnomos",
		"duendes",
		"gansos",
		"grifos",
		"licántropos",
		"némesis",
		"ogros",
		"oráculos",
		"profetas",
		"hechiceros",
		"arañas",
		"espíritus",
		"vampiros",
		"brujos",
		"zorras",
		"hombres lobo",
		"brujas",
		"adoradores",
		"zombies",
		"druidas"
		];
		return choice(data, this.rnd);
	}

	///
	override string phoneNumberFormats() {
		auto data = [
		"5###-###-###",
		"5##.###.###",
		"5## ### ###",
		"5########'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string cellPhoneFormats() {
		auto data = [
		"5##-###-###",
		"5##.###.###",
		"5## ### ###",
		"5########'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string internetFreeEmail() {
		auto data = [
		"gmail.com",
		"yahoo.com",
		"hotmail.com",
		"nearbpo.com",
		"corpfolder.com"
		];
		return choice(data, this.rnd);
	}

	///
	override string internetDomainSuffix() {
		auto data = [
		"com",
		"mx",
		"info",
		"com.mx",
		"org",
		"gob.mx'"
		];
		return choice(data, this.rnd);
	}

}
