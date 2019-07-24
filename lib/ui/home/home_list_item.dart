/*
 * Copyright (C) 2019 littlegnal
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'dart:core' as prefix0;
import 'dart:core';

import 'package:accountingmultiplatform/data/accounting.dart';
import 'package:built_value/built_value.dart';

part 'home_list_item.g.dart';

abstract class HomeListViewItem {}

abstract class HomeListViewHeader
    implements
        Built<HomeListViewHeader, HomeListViewHeaderBuilder>,
        HomeListViewItem {
  String get displayDate;
  String get displayTotal;

  HomeListViewHeader._();
  factory HomeListViewHeader([update(HomeListViewHeaderBuilder b)]) =
      _$HomeListViewHeader;
}

abstract class HomeListViewContent
    implements
        Built<HomeListViewContent, HomeListViewContentBuilder>,
        HomeListViewItem {
  Accounting get accounting;
  String get displayTime;
  String get displayLabel;
  String get displayRemark;
  String get displayExpense;

  HomeListViewContent._();
  factory HomeListViewContent([update(HomeListViewContentBuilder b)]) =
      _$HomeListViewContent;
}
