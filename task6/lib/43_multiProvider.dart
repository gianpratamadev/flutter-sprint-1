import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BuyOut extends StatelessWidget {
  // const BuyOut({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Money>(
          create: (context) => Money(),
        ),
        ChangeNotifierProvider<Cart>(
          create: (context) => Cart(),
        ),
      ],
      child: Scaffold(
          floatingActionButton: Consumer<Money>(
            builder: (context, money, _) => Consumer<Cart>(
              builder: (context, cart, _) => FloatingActionButton(
                  child: Icon(Icons.add_shopping_cart),
                  backgroundColor: Colors.purple,
                  onPressed: () {
                    if (money.balance >= 500) {
                      cart.quantity += 1;
                      money.balance -= 500;
                    }
                  }),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text('Video 43 - Multi Provider'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Balance'),
                    Container(
                      height: 30,
                      width: 150,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.purple[100],
                          border: Border.all(color: Colors.purple, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Consumer<Money>(
                          builder: (context, money, _) => Text(
                            money.balance.toString(),
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<Cart>(
                      builder: (context, cart, _) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Apple (500) x ' + cart.quantity.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            (500 * cart.quantity).toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class Cart with ChangeNotifier {
  int _quantity = 0;

  //Get
  int get quantity => _quantity;

  //Set
  set quantity(int value) {
    _quantity = value;
    notifyListeners();
  }
}

class Money with ChangeNotifier {
  int _balance = 30000;

  //Get
  int get balance => _balance;

  //Set
  set balance(int value) {
    _balance = value;
    notifyListeners();
  }
}
