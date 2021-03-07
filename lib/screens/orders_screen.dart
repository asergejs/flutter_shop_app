import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/orders_provider.dart' show Orders;
import 'package:shop/widgets/order_item.dart';


class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ordersProvider = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) => OrderItem(ordersProvider.orders[index]),
        itemCount: ordersProvider.orders.length,
      ),
    );
  }
}
