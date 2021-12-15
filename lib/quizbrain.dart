import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:quizzier_flutter/questionbank.dart';
import 'main.dart';

class QuizBrain{
  int count = 0;
  int qNumber = Random().nextInt(45);
  final List<QuestionBank> _qb = [
    QuestionBank('In the animation film “Finding Nemo,” the main protagonist is a pufferfish', false),
    QuestionBank('Is Mount Kilimanjaro the world’s tallest peak.', false),
    QuestionBank('Spaghetto is the singular form of the word spaghetti.', true),
    QuestionBank('Pinocchio was Walt Disney’s first animated feature film in full color.', false),
    QuestionBank('Venezuela is home to the world’s highest waterfall.', true),
    QuestionBank('Coffee is a berry-based beverage.', true),
    QuestionBank('The capital of Australia is Sydney.', false),
    QuestionBank('The longest river in the world is the Amazon River.', false),
    QuestionBank('Polar bears can only live in the Arctic region, not in the Antarctic.', true),
    QuestionBank('The United Kingdom is almost the same size as France.', false),
    QuestionBank('Walt Disney has the record for most Academy Awards.', true),
    QuestionBank('By lying a frog on its back and softly caressing its tummy, it is possible to hypnotize it.', true),
    QuestionBank('The moon is wider than Australia.', false),
    QuestionBank('Daily, your nose and sinuses create almost one liter of mucus.', true),
    QuestionBank('Seahorses have stomachs, which aid in the digestion of food.', false),
    QuestionBank('The first Disney princess was Cinderella.', false),
    QuestionBank('Patients with COVID-19 may use ibuprofen, aspirin, or naproxen as anti-inflammatory medications.', true),
    QuestionBank('In Scotland, the unicorn is their national animal.', true),
    QuestionBank('Zeus is referred to as the king of the Greek gods and goddesses.', true),
    QuestionBank('The Caribbean Island of Aruba is part of Portugal.', false),
    QuestionBank('The goat is used to symbolize the zodiac sign, Capricorn.', true),
    QuestionBank('Four countries share their land borders with Switzerland.', false),
    QuestionBank('In a regular deck of cards, all kings have a mustache.', false),
    QuestionBank('Borneo is divided into three nations.', true),
    QuestionBank('There is no English word that rhymes with orange.', true),
    QuestionBank('The mosquito has a record for killing more people than any other species in written history.', true),
    QuestionBank('Bananas are curved due to their upward growth toward the light.', true),
    QuestionBank('When the two numbers on opposite sides of the dice are added together, the result is always 7.', true),
    QuestionBank('When going out of the cave, the bats always turn in the right direction.', false),
    QuestionBank('Mamenchisaurus Hochuanensis is a dinosaur that has the longest neck and lived in what is now China.', true),
    QuestionBank('Among the letters of the alphabet, only the letter J is not included in the periodic table.', true),
    QuestionBank('The first living animal sent into space were fruit flies.', true),
    QuestionBank('Michael Jackson and Nicolas Cage both married the same lady.', true),
    QuestionBank('English is one of the official languages of the Philippines.', true),
    QuestionBank('South Africa officially has two capital cities.', false),
    QuestionBank('Corn is the most widely cultivated and consumed crop on the planet.', true),
    QuestionBank('Mickey’s given name has initially been Milton Mouse.', false),
    QuestionBank('The Atlantic Ocean is the world’s biggest ocean.', false),
    QuestionBank('Human facial hair grows at a higher rate than the rest of the body’s hair.', true),
    QuestionBank('Nepal is the only country in the world without a rectangular flag.', true),
    QuestionBank('The letter ‘A’ is the most commonly used in the English language.', false),
    QuestionBank('Switzerland’s currency is the Euro.', false),
    QuestionBank('The USA has the longest coastline in the world.', false),
    QuestionBank('In the famous movie Harry Potter, Draco Malfoy doesn’t have a sibling.', false),
    QuestionBank('The Philippines is an archipelagic country that has the most number of islands.', false),
  ];

  void nextQues(){
      qNumber = Random().nextInt(45);
      count++;
  }

  String getQuestion(){
    return _qb[qNumber].question;
  }

  bool getAnswer(){
    return _qb[qNumber].answer;
  }

  bool isFinished(){
    if(count == 9){
      return true;
    }
    return false;
  }

  void Reset(){
    count = 0;
    qNumber = Random().nextInt(45);
  }
}