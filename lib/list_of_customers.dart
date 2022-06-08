import 'package:flutter/material.dart';

class Customer_list {
  String name_of_customer;
  int customer_number;
  String customer_code;
  String amount;
  String status;

  Customer_list(
  {required this.name_of_customer,
  required this.customer_number,
  required this.customer_code,
  required this.amount,
  required this.status}
      );
}

List<Customer_list> customerList = [
  Customer_list(
      name_of_customer: "Kofi Vergil",
      customer_number: 23329874749,
      customer_code: "GA003",
      amount: "GHS 30.00",
      status: "Paid"),

  Customer_list(
      name_of_customer: "Nana Mensah",
      customer_number: 233298392803,
      customer_code: "GA193",
      amount: "GHS 30.00",
      status: "Outstanding"),

  Customer_list(
      name_of_customer: "Kwame Roja",
      customer_number: 233298392803,
      customer_code: "GA033",
      amount: "GHS 30.00",
      status: "Outstanding"),

  Customer_list(
      name_of_customer: "Maame Esi",
      customer_number: 233298392803,
      customer_code: "GA503",
      amount: "GHS 30.00",
      status: "Paid"),

  Customer_list(
      name_of_customer: "Kofi Vergil",
      customer_number: 23329874749,
      customer_code: "GA003",
      amount: "GHS 30.00",
      status: "Paid"),

  Customer_list(
      name_of_customer: "Kofi Vergil Something",
      customer_number: 23329874749,
      customer_code: "GA003",
      amount: "GHS 30.00",
      status: "Paid"),

  Customer_list(
      name_of_customer: "Nana Mensah",
      customer_number: 233298392803,
      customer_code: "GA193",
      amount: "GHS 30.00",
      status: "Outstanding"),

  Customer_list(
      name_of_customer: "Kwame Roja",
      customer_number: 233298392803,
      customer_code: "GA033",
      amount: "GHS 30.00",
      status: "Outstanding"),

  Customer_list(
      name_of_customer: "Maame Esi",
      customer_number: 233298392803,
      customer_code: "GA503",
      amount: "GHS 30.00",
      status: "Paid"),

  Customer_list(
      name_of_customer: "Nana Mensah",
      customer_number: 233298392803,
      customer_code: "GA193",
      amount: "GHS 30.00",
      status: "Outstanding"),

  Customer_list(
      name_of_customer: "Kwame Roja",
      customer_number: 233298392803,
      customer_code: "GA033",
      amount: "GHS 30.00",
      status: "Outstanding"),

  Customer_list(
      name_of_customer: "Maame Esi",
      customer_number: 233298392803,
      customer_code: "GA503",
      amount: "GHS 30.00",
      status: "Paid"),

  Customer_list(
      name_of_customer: "Nana Mensah",
      customer_number: 233298392803,
      customer_code: "GA193",
      amount: "GHS 30.00",
      status: "Outstanding"),

  Customer_list(
      name_of_customer: "Kwame Roja",
      customer_number: 233298392803,
      customer_code: "GA033",
      amount: "GHS 30.00",
      status: "Outstanding"),

  Customer_list(
      name_of_customer: "Maame Esi",
      customer_number: 233298392803,
      customer_code: "GA503",
      amount: "GHS 30.00",
      status: "Paid"),
];