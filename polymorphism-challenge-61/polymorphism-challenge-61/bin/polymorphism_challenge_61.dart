//CRIE UMA INTERFACE REFERENTE Á TRABALHO E EM SEGUIDA
// CRIE CLASSES QUE IMPLEMENTAM ESSA INTERFACE,
//NÃO DEIXE DE DEFINIR MÉTODOS CARACTERÍSTICAS E ESTADOS

import 'interfaces/work_interface.dart';
import 'models/laboratory_technician.dart';
import 'models/seller_model.dart';

void main() {
  final vendedor = SellerModel(
      wage: 5000.00, workload: 8, healthPlan: true, mealTicket: true);

  final tecnicoDeLaboratorio = LaboratoryTechnicianModel(
      healthPlan: true, wage: 2109.20, workload: 8, mealTicket: false);

  meuTrampo(tecnicoDeLaboratorio);
}

void meuTrampo(WorkInterface trabalho) {
  trabalho.hitPoint();
  trabalho.doingActivities();
  trabalho.hitPoint();
  trabalho.doingActivities();
  trabalho.hitPoint();
  trabalho.doingActivities();
  trabalho.hitPoint();
}
