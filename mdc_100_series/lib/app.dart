// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'colors.dart';
import 'supplemental/cut_corners_border.dart';
import 'home.dart';
import 'login.dart';
import 'backdrop.dart';
import 'category_menu_page.dart';
import 'model/product.dart';

class ShrineApp extends StatefulWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  _ShrineAppState createState() => _ShrineAppState();
}

class _ShrineAppState extends State<ShrineApp> {
  Category _currentCategory = Category.all;

  void _onCategoryTap(Category category) {
    setState(() {
      _currentCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crochet by Lee',
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/': (context) => Backdrop(
              currentCategory: _currentCategory,
              frontLayer: HomePage(category: _currentCategory),
              backLayer: CategoryMenuPage(
                currentCategory: _currentCategory,
                onCategoryTap: _onCategoryTap,
              ),
              frontTitle: const Text(
                'Crochet by Lee',
                style: TextStyle(
                  color: kSurfaceWhite,
                ),
              ),
              backTitle: const Text(
                'MENU',
                style: TextStyle(
                  color: kSurfaceWhite,
                ),
              ),
            ),
      },
      theme: _buildBrownTheme(),
    );
  }
}

ThemeData _buildBrownTheme() {
  final ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: kBrownMedium,
    brightness: Brightness.light,
  );

  return ThemeData(
    colorScheme: colorScheme,
    useMaterial3: true,
    scaffoldBackgroundColor: colorScheme.surface,
    appBarTheme: AppBarTheme(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: const CutCornersBorder(),
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: colorScheme.primary,
        ),
      ),
      floatingLabelStyle: TextStyle(color: colorScheme.onSurface),
    ),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: colorScheme.primary.withOpacity(0.4),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        elevation: 8,
      ),
    ),
    textTheme: Typography.blackMountainView.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
  );
}
