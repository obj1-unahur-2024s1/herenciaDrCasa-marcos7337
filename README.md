# Dr. Casa 
 
![](drhouse.jpg)

## Temporada 1
### *[Clases, Colecciones]*

_Everybody dies! El Departamento de Diagnóstico del Hospital Universitario Tecnológico nos pidió que les diéramos una mano con un sistema que les ayude a hacer su trabajo. Después de una interconsulta con distintos docentes de la materia optamos por modelarlo en objetos._

Cualquier persona puede contraer enfermedades (no puede contraer más de 5). En el momento que contrae una enfermedad no le causa ningún efecto, pero cada día que vive una persona con su enfermedad se producen sus efectos.

De toda enfermedad se conoce la cantidad de células que amenaza de la persona enferma, que depende de qué enfermedad sea y puede ir cambiando a medida que transcurre el tiempo, atenuándose o agravándose. El efecto que provoca en una persona es:

* Las enfermedades infecciosas (como las malarias o las otitis) aumentan la temperatura de la persona infectada en tantos grados como la milésima parte de las células amenazadas. El máximo de temperatura que puede tener una persona es 45°, que lo lleva a quedar en coma.
* Las enfermedades autoinmunes (como los casos de lupus) le destruyen a la persona la cantidad de células amenazadas.

Por otra parte, las enfermedades infecciosas pueden reproducirse a sí mismas, duplicando la cantidad de células amenazadas.
Además, las enfermedades pueden clasificarse como agresivas o no agresivas. 
Una enfermedad infecciosa es agresiva cuando la cantidad de células afectadas supera el 10% de las células totales del cuerpo. Por otro lado, una enfermedad autoinmune es agresiva cuando afectó a la persona por más de un mes (ó sea, produjo su efecto más de 30 veces).

Se pide la codificación necesaria y sus casos de prueba (al menos lo que se pide en el enunciado, pueden organizarlos como quieran y agregar más!) considerando el siguiente escenario inicial con personas y enfermedades:

### Enfermedades: 
1. Una malaria de 500 células amenazadas, una otitis de 100 células amenazadas y un lupus de 10000. 
2. Otra malaria más pulenta de 800 células amenazadas.

### Personas:
* Logan, con temperatura normal (36 grados) y con 3.000.000 de células, habiendo contraído las tres enfermedades del item 1.
* Frank, con temperatura normal y 3.500.000 células.

* Hacer que Frank contraiga la enfermedad del item 2.
* Hacer que una malaria (la que contrajo Logan) se reproduzca.
* Hacer que Logan viva un día de su vida. 
* Que el sistema permita verificar además:
  - la cantidad de células de Logan que estén amenazadas por enfermedades agresivas.
  - la enfermedad de Logan que más células afecte.
  - si Logan está en coma, lo que sucede si su temperatura es 45° o si tiene menos de 1.000.000 de células.

## Temporada 2
### *[Herencia, redefinición, super]*

![](enfermedades.jpg)

Good news, new symptoms! La directora del hospital,  Lisa Cuddy no puede convencer a Dr. House de usar el sistema y nos llamó para actualizarnos sobre los requerimientos.

Los médicos saben atender a cualquier persona enferma dándoles una dosis de medicamento propia de cada médico. Cuando la persona recibe un medicamento las enfermedades que tiene en el cuerpo se atenúan (cada una se atenúa en la cantidad de medicamento recibida, multiplicada por 15), y se curan en el caso de que no afecten a más células. Si un médico contrae una enfermedad, éste trata de curarse atendiéndose a sí mismo.

### Se pide:

* Hacer que la malaria se atenúe en 100 células y el lupus en 500 células.
* Hacer que Cameron atienda a Logan.
* Existen médicos que son jefes de departamento, como House, que cuando tienen que atender a un paciente, no le administran medicación sino que les dicen a uno sus subordinados que lo hagan. Hacer que House atienda a Cameron.
* Hacer que Cameron contraiga malaria. Hacer que House contraiga malaria. (Y pensar en el method lookup en ambos casos) -> Ojo que los médicos contraen diferente.
* Hacer que House contraiga la Muerte. La Muerte actúa disminuyendo toda la temperatura de la persona y no se atenúa con ningún medicamento. No afecta ninguna célula (no tiene sentido, ya que afecta a la persona entera) y es extremadamente agresiva (cuack)

### Para pensar: 
* Aparece una nueva enfermedad que cualquier persona puede contraer. ¿qué deberíamos saber de ella para poder representarla? ¿cuáles serían las alternativas de solución?
* ¿Qué pasaría si todas las enfermedades destruyen las células que amenazan? ¿Y si las autoinmunes tuvieran otro efecto adicional?
* Ahora queremos modelar una enfermedad como el sida, que es tanto infecciosa como autoinmune. ¿Cómo lo solucionamos?

