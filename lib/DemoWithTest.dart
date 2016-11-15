// Copyright (c) 2016, Henrik Andersson. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';

int calculate(int a, int b) {
  return a * b;
}

class Hero{
  String name;
  int age;
  Hero(this.name,this.age);
}

List<Hero> mockHeroes = [new Hero('Bobba Fett',27)];

class a{
  Future<List<Hero>> getHeroes() async => mockHeroes;
  Future<List<Hero>> getHeroesSlowly() {
    return new Future.delayed(const Duration(seconds: 10), getHeroes);
  }
}
