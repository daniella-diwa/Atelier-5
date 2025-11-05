void main() {
  try {
    String ton_age = " ";
    int age = int.parse(ton_age);
    print("Vous avez $age ans.");
  } on FormatException {
    print("Erreur : le format saisi n'est pas valide !");
  } finally {
    print("Fin d'opération");
  }
}
