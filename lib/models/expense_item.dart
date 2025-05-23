/**
 * @file expense_item.dart
 * @brief 费用记录数据模型
 *
 * 定义费用记录的数据结构，包含id、名称、类别、金额、日期和支付方式等字段。
 */

import 'package:floor/floor.dart';

@entity
class ExpenseItem {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String expenseName;
  final String category;
  final String amount;
  final String date;
  final String paymentMethod;

  static int ID = 1;

  ExpenseItem(this.id, this.expenseName, this.category, this.amount, this.date, this.paymentMethod) {

    if (id != null && id! >= ID) {
      ID = id! + 1;
    }
  }
}