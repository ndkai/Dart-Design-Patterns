abstract class Command {
  void execute();
}

class TurnLeft extends Command {
  @override
  void execute() {
    print("Turn left");
  }
}

class TurnRight extends Command {
  @override
  void execute() {
    print("Turn right");
  }
}

class CarToyController{
  late Command _command;

  void setCommand(Command command){
    _command = command;
  }

   void onPressButton(){
     _command.execute();
   }
}

void main(){
  CarToyController controller = CarToyController();

  // controller.setCommand(TurnLeft());
  controller.setCommand(TurnRight());

  controller.onPressButton();
}