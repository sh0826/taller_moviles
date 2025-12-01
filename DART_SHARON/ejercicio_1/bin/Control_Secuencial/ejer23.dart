//Suponga que a partir de una Tonelada de maíz una planta productora 
//obtiene M kilogramos de harina y N litros de aceite. La planta vende 
//cada bulto de 24 paquetes de un kilogramo de harina en Bs. B1 y cada caja 
//de 15 envases de aceite en Bs. B2. Suponiendo que la planta vende todo lo 
//que produce, calcular el ingreso total por la venta de cada tonelada de maíz, 
//sabiendo además que cada kilogramo de harina y cada litro de aceite que restan 
//del embalaje se venden al detal a los precios de Bs. B3 y Bs. B4 respectivamente. 
//Pruebe su algoritmo o programa con los sig. Valores: M=452, N=197, B1=132, B2=
// 180, B3= 7,50 y B4= 14,50. Respuesta: 4895
void main(){
    double M = 452;
    double N = 197;
    double B1 = 132;
    double B2 = 180; 
    double B3= 7.50; 
    double B4= 14.50;

    int bulto = M ~/24;
    double precioB = bulto * B1;
    double restanteB = M % 24;
    double ventaRestanteB = restanteB * B3;

    int envase = N~/15;
    double precioE = envase * B2;
    double restanteE = N % 15;
    double ventaRestanteE = restanteE * B4; 

    double total = precioE+ventaRestanteE+precioB+ventaRestanteB;
    print("el precio de todo es de: $total");
}