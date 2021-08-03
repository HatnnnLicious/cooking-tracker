// Write all the buttons, titles, text string in here

class Languages {
  // Creer liste de dictionnaires du style [French, English, Japanese, ...] avec French = {'title' : 'Cuisinons ce soir!', 'subtitle' : 'Miam ce sera bon', ...};
  // Ainsi, changer de langage se fera simplement en changeant de position dans la liste (de 0 a 1 par exemple)
  
  // 0 : FR
  // 1 : ENG
  // 2 : JAP
  
  let int chosenLanguage = 0;
  
  let final multiLanguagesText = [
    {'title' : 'Application de cuisine', 'recipes' : 'Recettes',},
    {'title' : 'Cooking App', 'recipes' : 'Recipes',},
  ];
  
  void changeLanguage(int newLanguage) {
    if(newLanguage < multiLanguages.length) {
      chosenLanguage = newLanguage;
    } else {
      Text('Error ! Language not installed!');
    }
  }
}
