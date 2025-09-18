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

import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    const allProducts = <Product>[
      Product(
        category: Category.accessories,
        id: 0,
        isFeatured: true,
        name: 'Duck With Hat',
        price: 45000, 
        assetName: 'assets/crochet/duck_with_hat.jpeg',
      ),
      Product(
        category: Category.accessories,
        id: 1,
        isFeatured: true,
        name: 'Flower Bunny',
        price: 50000,
        assetName: 'assets/crochet/flower_bunny.jpeg',
      ),
      Product(
        category: Category.accessories,
        id: 2,
        isFeatured: false,
        name: 'Little Hammie',
        price: 45000,
        assetName: 'assets/crochet/little_hammie.jpeg',
      ),
      Product(
        category: Category.accessories,
        id: 3,
        isFeatured: true,
        name: 'Fat Raccoon',
        price: 30000,
        assetName: 'assets/crochet/fat_raccoon.jpeg',
      ),
      Product(
        category: Category.accessories,
        id: 4,
        isFeatured: false,
        name: 'Pochacco',
        price: 45000,
        assetName: 'assets/crochet/pochacco.jpeg',
      ),
      Product(
        category: Category.accessories,
        id: 5,
        isFeatured: false,
        name: 'Baby Elephant',
        price: 40000,
        assetName: 'assets/crochet/elephant.jpeg',
      ),
      Product(
        category: Category.accessories,
        id: 6,
        isFeatured: false,
        name: 'Toothless or Light Fury',
        price: 60000,
        assetName: 'assets/crochet/toothless_lightfury.jpeg',
      ),
      Product(
        category: Category.accessories,
        id: 7,
        isFeatured: true,
        name: 'Bear Bee',
        price: 40000,
        assetName: 'assets/crochet/bee.jpeg',
      ),
      Product(
        category: Category.accessories,
        id: 8,
        isFeatured: true,
        name: 'Nemo',
        price: 40000,
        assetName: 'assets/crochet/nemo.jpeg',
      ),
      Product(
        category: Category.home,
        id: 9,
        isFeatured: true,
        name: 'Cute Cloud',
        price: 30000,
        assetName: 'assets/crochet/cloud.jpeg',
      ),
      Product(
        category: Category.home,
        id: 10,
        isFeatured: false,
        name: 'Fat Pug',
        price: 40000,
        assetName: 'assets/crochet/pug.jpeg',
      ),
      Product(
        category: Category.home,
        id: 11,
        isFeatured: false,
        name: 'Silly Pig',
        price: 35000,
        assetName: 'assets/crochet/pig.jpeg',
      ),
      Product(
        category: Category.home,
        id: 12,
        isFeatured: false,
        name: 'Giraffe',
        price: 50000,
        assetName: 'assets/crochet/giraffe.jpeg',
      ),
      Product(
        category: Category.home,
        id: 13,
        isFeatured: true,
        name: 'Cappybara',
        price: 35000,
        assetName: 'assets/crochet/cappy.jpeg',
      ),
      Product(
        category: Category.home,
        id: 14,
        isFeatured: true,
        name: 'Mushroom Buny',
        price: 80000,
        assetName: 'assets/crochet/mushroom_bunny.jpeg',
      ),
      Product(
        category: Category.home,
        id: 15,
        isFeatured: true,
        name: 'Smol Cat',
        price: 30000,
        assetName: 'assets/crochet/smol_cat.jpeg',
      ),
      Product(
        category: Category.home,
        id: 16,
        isFeatured: true,
        name: 'Corgi',
        price: 55000,
        assetName: 'assets/crochet/corgi.jpeg',
      ),
      Product(
        category: Category.home,
        id: 17,
        isFeatured: false,
        name: 'Sheep',
        price: 45000,
        assetName: 'assets/crochet/sheep.jpeg',
      ),
      Product(
        category: Category.home,
        id: 18,
        isFeatured: true,
        name: 'Cool Teddy',
        price: 60000,
        assetName: 'assets/crochet/cool_teddy.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 19,
        isFeatured: false,
        name: 'Cozy Penguin',
        price: 48,
        assetName: 'assets/crochet/cozy_penguin.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 20,
        isFeatured: false,
        name: 'Pompompurin',
        price: 45,
        assetName: 'assets/crochet/pompompurin.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 21,
        isFeatured: false,
        name: 'Mammoth',
        price: 70000,
        assetName: 'assets/crochet/mammoth.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 22,
        isFeatured: false,
        name: 'Strawberry Turtle',
        price: 90000,
        assetName: 'assets/crochet/strawberry_turtle.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 23,
        isFeatured: false,
        name: 'Otter',
        price: 75000,
        assetName: 'assets/crochet/otter.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 24,
        isFeatured: true,
        name: 'Rat sweater',
        price: 50000,
        assetName: 'assets/crochet/rat.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 25,
        isFeatured: false,
        name: 'Whale',
        price: 178,
        assetName: 'assets/crochet/whale.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 26,
        isFeatured: false,
        name: 'Axolotl',
        price: 75000,
        assetName: 'assets/crochet/axolotl.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 27,
        isFeatured: true,
        name: 'Perry The Platypus',
        price: 50000,
        assetName: 'assets/crochet/perry.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 28,
        isFeatured: true,
        name: 'Totoro',
        price: 55000,
        assetName: 'assets/crochet/totoro.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 29,
        isFeatured: true,
        name: 'Octopus',
        price: 25000,
        assetName: 'assets/crochet/octopus.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 30,
        isFeatured: true,
        name: 'Monkey',
        price: 80000,
        assetName: 'assets/crochet/monkey.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 31,
        isFeatured: false,
        name: 'Bare Bears',
        price: 60000,
        assetName: 'assets/crochet/barebear.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 32,
        isFeatured: false,
        name: 'Monkey',
        price: 60000,
        assetName: 'assets/crochet/monkey.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 33,
        isFeatured: true,
        name: 'Cow',
        price: 80000,
        assetName: 'assets/crochet/cow.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 34,
        isFeatured: false,
        name: 'Mushroom',
        price: 45000,
        assetName: 'assets/crochet/mushroom.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 35,
        isFeatured: false,
        name: 'Hammerhead Shark',
        price: 60000,
        assetName: 'assets/crochet/hammerhead.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 36,
        isFeatured: false,
        name: 'Minion',
        price: 40000,
        assetName: 'assets/crochet/minion.jpeg',
      ),
      Product(
        category: Category.clothing,
        id: 37,
        isFeatured: true,
        name: 'Donald Duck',
        price: 70000,
        assetName: 'assets/crochet/donald_duck.jpeg',
      ),
    ];
    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((Product p) {
        return p.category == category;
      }).toList();
    }
  }
}
