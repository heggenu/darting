// Copyright (c) 2016, Henrik Andersson. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:DemoWithTest/DemoWithTest.dart';
import 'package:test/test.dart';
import 'dart:async';

void main() {
  group("Initial", () {
    test('calculate 1', () {
      expect(calculate(7,6), 42);
    });
    test('calculate 2', () {
      expect(calculate(6,7), equals(42));
    });
    test('calculate 3', () {
      expect(calculate(7,7), 49);
    });
    test("new Future.error() throws the error", () {
      expect(new Future.error("oh no"), throwsA(equals("oh no")));
      expect(new Future.error(new StateError("bad state")), throwsStateError);
    });
    test('future compute',() async {
      var value = await new a().getHeroesSlowly();
      //List<Hero> bobba=[new Hero('Bobba Fett',27)];
      expect(value.first.name,'Bobba Fett');
    });
  });
}
