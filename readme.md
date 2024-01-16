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


-`Análisis Temporal:`

![Cantidad de Víctimas por año](https://i.postimg.cc/J7JNHhtg/cantidad-victimas-por-a-o.png)

Se evidencia un incremento notable en el número de víctimas de siniestros viales durante el año 2018. De igual manera, se aprecia una significativa disminución en el año 2020. Este fenómeno puede vincularse con la declaración de la pandemia mundial y las subsiguientes restricciones de viaje y movilidad implementadas.

![Relación entre número de víctimas por Horas y Días de la Semana](https://i.postimg.cc/8crtjd9n/victimas-por-hora-y-dia.png)


En el gráfico se evidencia que la incidencia más significativa de víctimas en siniestros viales tiene lugar los días sábados y domingos, especialmente durante un intervalo horario comprendido entre las 03:00 a.m. y las 09:00 a.m. Asimismo, se observa que durante el resto de los días de la semana, las tasas más elevadas de siniestros viales acontecen entre las 07:00 a.m. y las 09:00 a.m., así como entre las 16:00 p.m. y las 20:00 p.m. Estos periodos coinciden con las horas de entrada y salida laboral, sugiriendo una correlación con los desplazamientos asociados a actividades laborales.


-`Análisis Demográfico:`

![Proporción de Víctimas por sexo](https://i.postimg.cc/0yfQLTjc/victimas-por-sexo.png)

Se puede observar que el 76% de las víctimas de siniestros viales pertenecen al sexo masculino.

![Distribución de Edad de Víctimas por Sexo](https://i.postimg.cc/SQCmBBtC/distribucion-de-edad.png)

Se muestran dos histogramas sobre el mismo eje a fin de poder observar las diferencias entre las víctimas de ambos sexos.
Podemos apreciar que las victimas de siniestros viales del sexo Masculino tienen entre 20 a 40 años de edad, mientras que las víctimas de siniestros viales del sexo Femenino tienen entre 30, 60 y 80 años de edad.


-`Análisis de Participantes (Acusados-Víctimas):`

![Cantidad de Víctimas según acusado](https://i.postimg.cc/ydKLkSsV/victimas-segun-acusado.png)

En el gráfico se puede observar que los autos junto con los pasajeron son los mayores acusados en relación a la cantidad de víctimas en siniestro viales. Según el diccionario de datos, pasajero es cualquier persona que se encuentra dentro, descendiendo o ascendiendo del transporte público u omnibús de larga distancia.

![Distribución de Víctimas](https://i.postimg.cc/0ywRL3fh/distribuci-n-de-victimas.png)

Se puede observar en el gráfico que las motos, seguidas de los peatones, representan en su mayoría a las víctimas de los siniestros viales ocurridos 


-`Análisis Geográfico:`

![Víctimas por Comunas y Barrios](https://i.postimg.cc/HxP6WWWz/victimas-por-comunas.png)

En el gráfico se pueden observar un total de 15 comunas, conformadas con uno o varios Barrios. Las comunas con mayor cantidad de víctimas en siniestros viales son las 1, 4, 9, 8 y 7.
En la comuna 1 se encuentra el microcentro de la Ciudad Autónoma de Buenos Aires. Allí mismo se concentra la mayor cantidad de oficinas de trabajo por lo que se supone que la gran cantidad de víctimas faltales por siniestros viales que suceden allí posiblemente sea el tránsito al momento de la entrada ó salida del horario laboral.


![Víctimas por Tipo de calle](https://i.postimg.cc/PfY6nHsW/victimas-por-tipo-de-calle.png)

Se puede observar en el gráfico que la mayor cantidad de víctimas en siniestros viales suceden en las Avenidas, seguido de las calles. 


### Indicadores de Rendimiento Clave - KPI


Concluido el Análisis Exploratorio de Datos, se procede a emplear el conjunto de datos resultante con el propósito de trabajar en la herramienta Power BI y así proyectar los KPI (Indicadores Clave de Rendimiento) en un dashboard y construir un panel de presentación del informe, así como una visualización efectiva de los datos.


KPI Propuestos

![KPI](https://i.postimg.cc/gJMvygf2/kpis.pnghttps://i.postimg.cc/gJMvygf2/kpis.png)


- **Reducir en un 10% la tasa de homicidios en siniestros viales de los últimos seis meses, en CABA, en comparación con la tasa de homicidios en siniestros viales del semestre anterior**

Se define la tasa de homicidios en siniestros viales como el número de víctimas fatales en accidentes de tránsito por cada 100,000 habitantes en un área geográfica durante un período de tiempo específico. Su fórmula es: (Número de homicidios en siniestros viales / Población total) * 100,000

- **Reducir en un 7% la cantidad de accidentes mortales de motociclistas en el último año, en CABA, respecto al año anterior**

Se define la cantidad de accidentes mortales de motociclistas en siniestros viales como el número absoluto de accidentes fatales en los que estuvieron involucradas víctimas que viajaban en moto en un determinado periodo temporal. Su fórmula para medir la evolución de los accidentes mortales con víctimas en moto es: (Número de accidentes mortales con víctimas en moto en el año anterior - Número de accidentes mortales con víctimas en moto en el año actual) / (Número de accidentes mortales con víctimas en moto en el año anterior) * 100

 - **Reducir en un 9% la cantidad de accidentes con víctimas fatales de peatones en el último en el último año, en CABA, respecto al año anterior**

Se define la cantidad de accidentes fatales de peatones en siniestros viales como el número absoluto de accidentes fatales en los que estuvieron involucradas víctimas que circulaban a pie en un determinado periodo temporal. Su fórmula para medir la evolución de los accidentes mortales con víctimas peaton es: (Número de accidentes mortales con víctimas peaton en el año anterior - Número de accidentes mortales con víctimas peaton en el año actual) / (Número de accidentes mortales con víctimas peaton en el año anterior) * 100


![KPI2](https://i.postimg.cc/PJjC0c04/kpi2.png)



# <a name="Contacto">Contacto</a>

Si tenés alguna pregunta, sugerencia o simplemente querés ponerte en contacto conmigo, podés comunicarte de las siguientes maneras:

- Correo Electrónico: [belenviglioglia@gmail.com](mailto:belenviglioglia@gmail.com)
- LinkedIn: [Belén Viglioglia Becker](https://www.linkedin.com/in/belen-viglioglia-becker/)


¡Gracias por visitar mi proyecto!


<p align="center"><img src="https://i.postimg.cc/43V7yDtN/descarga.png"></p>