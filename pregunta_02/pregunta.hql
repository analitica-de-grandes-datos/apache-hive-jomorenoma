/* 
Pregunta
===========================================================================

Para resolver esta pregunta use el archivo `data.tsv`.

Construya una consulta que ordene la tabla por letra y valor (3ra columna).

Apache Hive se ejecutará en modo local (sin HDFS).

Escriba el resultado a la carpeta `output` de directorio de trabajo.

        >>> Escriba su respuesta a partir de este punto <<<
*/

CREATE TABLE Tabla (
    letra STRING,
    fecha STRING,
    numero INT
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t';
LOAD DATA LOCAL INPATH "data.tsv" OVERWRITE INTO TABLE Tabla;


INSERT OVERWRITE LOCAL DIRECTORY 'output'
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
SELECT
	*
FROM 
	Tabla
ORDER BY
	letra, numero, fecha;
