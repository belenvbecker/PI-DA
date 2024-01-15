<p align="center"><img src="https://i.postimg.cc/s2XXyBdL/bbx-635815922-seguridad-vial.jpg"></p>


<h1 align='center'> Proyecto Individual N°2</h1>

<h2 align='center'> Siniestros viales en CABA (2016-2021)</h2>

<h2 align='center'>Belén Viglioglia Becker, DATAPT05</h2>

---
## **`Tabla de Contenidos`**

- [Introducción](#introducción)
- [Contexto](#contexto)
- [Desarrollo](#desarrollo)
    - [ETL](#exploración-transformación-y-carga-etl)
    - [EDA](#análisis-exploratorio-eda)
    - [INDICADORES DE RENDIMIENTO CLAVE - KPI](#indicadores-de-rendimiento-clave-KPI)
- [Contacto](#contacto)


    ---

# Introducción

Este proyecto se llevó a cabo con el fin de realizar la labor de un Analista de Datos en representación de una consultora. Su propósito central es realizar un análisis a raíz de los datos recopilados por el Observatorio de Movilidad y Seguridad Vial (OMSV), entidad perteneciente a la órbita de la Secretaría de Transporte del Gobierno de la Ciudad Autónoma de Buenos Aires (CABA).

Este análisis tiene como objetivo examinar detalladamente la información recabada con el fin de extraer conclusiones y patrones significativos relacionados con la movilidad y la seguridad vial en la región, a fin de tomar decisiones que contribuyan a la prevención de siniestros viales con víctimas fatales, así como al aumento general de la seguridad vial en la Ciudad de Buenos Aires.

Las tasas de mortalidad asociadas a siniestros viales son indicadores críticos de la seguridad vial en una región determinada. Su cálculo se realiza habitualmente como el número de defunciones por cada determinado número de habitantes o vehículos registrados. La reducción de estas tasas constituye un objetivo primordial para mejorar la seguridad vial y salvaguardar la vida de los ciudadanos en la urbe.

Con el propósito de cumplir con estos objetivos, se utilizaron un conjunto de datos que detalla información sobre homicidios en siniestros viales en la Ciudad de Buenos Aires durante los años 2016-2021. Este conjunto de datos es de acceso público y está disponible en la página oficial de la Ciudad Autónoma de Buenos Aires bajo la sección de Datos Oficiales.

# Contexto

En Argentina, cada año mueren cerca de 4.000 personas en siniestros viales, siendo esta la principal causa de muertes violentas en el país. Los informes del Sistema Nacional de Información Criminal (SNIC), del Ministerio de Seguridad de la Nación, revelan que entre 2018 y 2022 se registraron 19.630 muertes en siniestros viales en todo el país. Estas cifras equivalen a 11 personas por día que resultaron víctimas fatales por accidentes de tránsito.

La Ciudad Autónoma de Buenos Aires es la capital y ciudad más poblada de la República Argentina. La superficie es algo superior a los 200 km2 y su perímetro, 60 km. Los habitantes que residen en ella, están distribuidos en barrios que, desde el punto de vista político-administrativo, se agrupan en quince comunas. La densidad de la población es de más de 15.000 habitantes por kilómetro cuadrado. Las zonas centro y norte son los espacios territoriales más densamente poblados. La población de la ciudad, según el Censo de 2022 es de 3 120 612 habitantes.Solo en 2022, se contabilizaron 3.828 muertes fatales en este tipo de hechos. Los expertos en la materia indican que en Argentina es dos o tres veces más alta la probabilidad de que una persona muera en un siniestro vial que en un hecho de inseguridad delictiva.

En virtud de lo expuesto, el análisis de la problemática asociada a la prevención y reducción de siniestros viales resulta ser un aspecto de suma importancia para las autoridades.

# Desarrollo

El desarrollo del proyecto se fundamenta en la Base de Víctimas Fatales en Siniestros Viales en formato de Excel que se encuentra en el siguiente [link](https://data.buenosaires.gob.ar/dataset/victimas-siniestros-viales) y contiene dos tablas con los próximos datos:

HECHOS: Contiene información sobre la cantidad de víctimas y su relación temporal y espacial con el siniestro vial, como puede ser el lugar del hecho, el día, la hora, etc. Asimismo, también presenta información de los  participantes asociados al mismo.

VICTIMAS: Contiene información acerca de las víctimas de los hechos relacionadas a su edad, sexo, medio de transporte y rol que llevó a cabo durante el siniestro vial. 

### Exploración, Transformación y Carga (ETL)

En primer lugar se realizó el proceso de limpieza, transformación y carga de los datos tanto en la tabla de Hechos como en la de Víctimas para que sean más adecuados para el análisis:

- Se normalizaron los nombres de los registros de las columnas.
- Se modificaron los tipos de datos de los registros por los correctos para su manipulación.
- Se verificó la existencia de datos duplicados.
- Se crearon nuevas columnas con los datos de las coordenadas x y las coordenadas y extraídas de otra columna.
- Se realizó un merge de la tabla Hechos con la tabla Víctimas mediante el ID.
- Se creó una nueva columna con los días de la semana que correspondían a la fecha del siniestro.
- Se verificó la existencia de datos nulos.
- Se creó una columna con rangos etarios a fin de realizar un preciso análisis.


### Análisis Exploratorio de datos (EDA)

Una vez que se realizó la limpieza de los 3 dataset, se procedió a efectuar el Análisis Exploratorio de datos(EDA) mediante el cual se confeccionaron gráficos a fin de analizar e investigar los datos y así llegar a comprender las estadísticas, encontrar valores atípicos y orientar un futuro estudio.











# <a name="Contacto">Contacto</a>

Si tenés alguna pregunta, sugerencia o simplemente querés ponerte en contacto conmigo, podés comunicarte de las siguientes maneras:

- Correo Electrónico: [belenviglioglia@gmail.com](mailto:belenviglioglia@gmail.com)
- LinkedIn: [Belén Viglioglia Becker](https://www.linkedin.com/in/belen-viglioglia-becker/)


¡Gracias por visitar mi proyecto!


<p align="center"><img src="https://i.postimg.cc/43V7yDtN/descarga.png"></p>