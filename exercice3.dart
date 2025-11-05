void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw Exception('Le mot de passe doit contenir au moins 6 caractères');
  }
}

void main() {
  print('Mot de passe trop court:');
  try {
    verifierMotdepasse('1234');
    print('Le mot de passe est valide');
  } catch (e) {
    print('Erreur détectée: $e');
  }

  print('Mot de passe valide:');

  try {
    verifierMotdepasse('network123');
    print('Le mot de passe est valide');
  } catch (e) {
    print('Erreur détectée: $e');
  }
}
