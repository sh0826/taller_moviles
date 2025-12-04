//Una persona desea iniciar un negocio, para lo 
//cual piensa verificar cuánto dinero le prestaría el
//banco por hipotecar su casa. Tiene una cuenta 
//bancaria, pero no quiere disponer de ella a menos
//que el monto por hipotecar su casa sea muy pequeño. 
//Si el monto de la hipoteca es menor que
//$1.000.000 entonces invertirá el 50% de la 
//inversión total, y un socio invertirá el otro 50%. Si el
//monto de la hipoteca es de $1.000.000 o más, 
//entonces invertirá el monto total de la hipoteca y el
//resto del dinero que se necesite para cubrir 
//la inversión total se repartirá a partes iguales entre el
//socio y él.
import 'dart:io';

void main(){
  print("Ingresa el dinero que te dan por hipotecar tu casa");
  double hipoteca = double.parse(stdin.readLineSync()!);
  print("Ingresa cuanto necesitas para arrancar el negocio");
  double inversion = double.parse(stdin.readLineSync()!);

  double aporteBanco = 0;
  double inversionCliente = 0;

  if(hipoteca<1000000){
    inversionCliente = inversion /2;
    aporteBanco = inversionCliente/2;
  }else{
    double sobro = inversion - hipoteca;
    if(sobro<=0){
      inversionCliente = inversion.toDouble();
      aporteBanco = 0;
    }else{
      inversionCliente = hipoteca +(sobro/2);
      aporteBanco = (sobro/2);
    }
  }
    print("Aporte de la persona: $inversionCliente");
  print("Aporte del socio: $aporteBanco");
}