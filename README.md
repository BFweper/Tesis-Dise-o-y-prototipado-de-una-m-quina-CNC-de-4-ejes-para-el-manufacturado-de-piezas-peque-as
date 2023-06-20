# Tesis: Diseño y prototipado de una máquina CNC de 4 ejes para el manufacturado de piezas pequeñas

## Descripción

En este repositorio encontrarás una colección de archivos relacionados con el diseño e implementación de una máquina CNC de 4 ejes para el manufacturado de piezas pequeñas. El objetivo principal de este proyecto es explicar lo desarrollado hasta el momento sobre el tema de tesis.

## Contenido

# Diseño de la máquina CNC
Primero se tuvo que diseñar la máquina CNC de 3 ejes en Fusion 360, en la siguiente imagen se puede ver la máquina CNC de 3 ejes que originalmente se tenia diseño y que ya fue implementado.

<img src="imagenes/cncPropia (7).jpg" alt="Texto alternativo" width="400" height="500">
<img src="imagenes/cncpropia (8).jpg" alt="Texto alternativo" width="500" height="500">

En el siguiente video se puede ver el funcionamiento de la máquina CNC usando el software de Marlin, cuya interfaz gráfica se puede ver en la siguiente imagen.


<img src="imagenes/InterfazMarlin.jpeg" alt="Texto alternativo" width="800" height="500">

[(Link del video)](https://drive.google.com/file/d/1PD01dJX2HNzqJeuAOO1hhQPEYfSpYTAr/view?usp=drive_link)



En el anterior video se dibujaron cuadrados de 1cm x 1cm, para comprobar estos resultados se realizaron las mediciones correspondientes, donde se comprueba que la mpáquina si esta respondiendo a los comando NC que se le esta cargando por lo que ya se puede tener la certeza de que también se tendrá al momento del proceso del fresado.

<img src="imagenes/medicionesCua.jpeg" alt="Texto alternativo" width="400" height="500">

Esto se lográ al saber con que tornillo sin fin se está trabajando en la máquina, ya que los motores NEMA 17 están conectados a ellos, por lo que se tiene que realizar el siguiente cálculo para saber el avance del actuador:

$$
(1 vuelta= hilos \cdot paso=4*\frac{1}{4}) = 1mm
$$


El motor paso a paso NEMA 17 tiene que estar configurado a 1/4 de pasos para que el tornillo de 4 hilos tenga una precisión de avance de 1mm cuando se gire una vuelta. Entonces, en el informe de la tesis ([Link](https://www.overleaf.com/read/zrbwjbkmgxcb)), se tiene el cálculo para comprobar que los NEMA 17 en lo ejes XYZ si podrán realizar la tarea del fresado. 

El sistema Actuador que se diseño para implementar el cuarto eje, se puede ver en la siguiente imagen que se optó por usar engranajes planetarios usando un motor de 67Kg.cm de torque que se obtuvo de la tienda Naylamp Mechatronics ([Link](https://naylampmechatronics.com/motores-dc/817-motor-dc-37d-12v-35rpm-con-encoder.html)). El diseño y fabricación de estos engranajes planetarios se puede ver en las siguientes imagenes.

<img src="imagenes/engranajesDise.png" alt="Texto alternativo" width="300" height="300">
<img src="imagenes/engranajesimple.jpg" alt="Texto alternativo" width="300" height="400">

Estos engranajes son la primera versión ya que se mejoró este diseño obteniendo la siguiente imagen
<img src="imagenes/sistemaActuador.jpg" alt="Texto alternativo" width="300" height="300">
<img src="imagenes/PIezas.jpg" alt="Texto alternativo" width="300" height="300">



Para evitar la fricción del movimiento del engranaje corona se colocó unas 6 ruedas colocadas para distribui el peso de todo el eje Z y evitar que las piezas tengan deformaciones o se rompan.

<img src="imagenes/rueda.jpg" alt="Texto alternativo" width="300" height="400">

Para el controlador del motor adquirido se explico en el documento de la tesis ([Link](https://www.overleaf.com/read/zrbwjbkmgxcb)) por lo que en este repositorio se colocaron los archivos de SImulink que se usaron para realizar las simulaciones en la carpeta de Simulaciones, pero todavía no se logró implementar en el Marlin debido a la complejidad de este controlador, se esta evaluando el implementar este controlador usando un circuito a base de OPAMPS.



