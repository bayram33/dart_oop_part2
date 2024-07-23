void main(List<String> args) {
  User user_1 = User("ab@gmail.com", "785");
  NormalUser user_2 = NormalUser("er@gmail.com", "74", 4);
  AdminUser user_3 = AdminUser("pl@gmail.com", "85", "it is so secret data");
  ReaderUser user_4 = ReaderUser("js@gmail.com", "52", 5, 9);

  print("***************************************");
  user_1.loginSystm();
  print("***************************************");

  user_2.loginSystm();
  user_2.invite();
  print("***************************************");

  user_3.loginSystm();
  user_3.showAllUser();
  print("***************************************");

  user_4.loginSystm();
  user_4.sayMyName();
  print("***************************************");
}

class User {
  String mail = "";
  String password = "";
  User(this.mail, this.password);
  void loginSystm() {
    print("The user entered the system");
    print("Mail => $mail  Password => $password");
  }
}

class NormalUser extends User {
  int id = 0;
  NormalUser(mail, password, this.id) : super(mail, password);
  void invite() {
    print("Can you enter the our company");
  }

  @override
  void loginSystm() {
    print("The normal user entered the system");
  }
}

class AdminUser extends User {
  String secretInfo = "";
  AdminUser(mail, password, this.secretInfo) : super(mail, password);
  void showAllUser() {
    print("20 users registered the system");
  }

  @override
  void loginSystm() {
    print("The  admin user entered the system");
  }
}

class ReaderUser extends NormalUser {
  int age = 0;
  ReaderUser(mail, password, id, this.age) : super(mail, password, id);

  void sayMyName() {
    print("Say my name !!!");
  }

  @override
  void loginSystm() {
    print("The reader user entered the system");
  }
}
