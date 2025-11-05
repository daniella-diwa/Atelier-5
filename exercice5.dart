class NombreNegatifException implements Exception {
  @override
  String toString() => "Erreur : le nombre ne peut pas être négatif.";
}

void verifierNombre(int n) {
  if (n < 0) {
    throw NombreNegatifException();
  } else {
    print("Le carré de $n est ${n * n}");
  }
}

void main() {
  try {
    int nombre = 5;
    verifierNombre(nombre);
  } on NombreNegatifException catch (e) {
    print(e);
  } finally {
    print("Fin du programme.");
  }
}
