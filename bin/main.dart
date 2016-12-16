// Copyright (c) 2016, Henrik Andersson. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:DemoWithTest/DemoWithTest.dart' as DemoWithTest;

main(List<String> arguments) async {
  test();
  print('Hello world: ${DemoWithTest.calculate(9,9)}!');
  
}

test() async{
  DemoWithTest.a tester = new DemoWithTest.a();
  List<DemoWithTest.Hero> a;
  a = await tester.getHeroesSlowly();
  print(a[0].name);
}