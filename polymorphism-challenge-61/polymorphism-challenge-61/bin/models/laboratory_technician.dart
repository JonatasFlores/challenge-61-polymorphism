import '../interfaces/work_interface.dart';

class LaboratoryTechnicianModel implements WorkInterface {
  LaboratoryTechnicianModel({
    required this.healthPlan,
    required this.wage,
    required this.workload,
    required this.mealTicket,
  });
  double _wallet = 0;
  double hour = 8.0;
  bool _openPoint = false;

  @override
  bool healthPlan;

  @override
  bool mealTicket;

  @override
  double wage;

  @override
  int workload;

  @override
  void hitPoint() {
    //AQUI O FUNCIONÁRIO ABRE E FECHA O PONTO
    if (hour == 8.0) {
      print("First Point\n Welcome ");
      _openPoint = true;
    } else if (hour == 12.0) {
      print("Second Point\n Nice lunch");
      _openPoint = false;
    } else if (hour == 14.0) {
      print("Third Point\n Good Afternoon");
      _openPoint = true;
    } else if (hour == 18.0) {
      print("Good evening See you tomorrow");
    } else {
      print("You cannot clock in outside of service hours.");
      //não permite bater o ponto fora de horário.
    }
  }

  @override
  void payDay() {
    _wallet += wage;
    print("Payment on Account");
    print("Thank you for the Month of Commitment");
    print("Balance: ${_wallet} R\$");
  }

  @override
  void vacation() {
    double vacationThirt; //TERÇO DE FÉRIAS
    double averageWage; //MÉDIA SALÁRIAL
    double vacationBalance; //SALDO DAS FÉRIAS
    print("Good Vacation");
    vacationThirt = (wage / 3) * .3;
    averageWage = wage / 12;
    vacationBalance = averageWage + vacationThirt;
    _wallet += vacationBalance;
    print("Balance: ${_wallet} R\$");
  }

  @override
  void doingActivities() {
    print('Diagnosing\n Repairing\n Testing\n Able to Work');
  }
}
