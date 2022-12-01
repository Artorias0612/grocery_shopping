import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shopping/models/cart_model.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text(
          "My Carts",
          style: GoogleFonts.notoSerif(
              color: Colors.black, fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Consumer<CartModel>(builder: ((context, value, child) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: value.cartItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(6.0)),
                        child: ListTile(
                          title: Text(
                            value.cartItems[index][0],
                            style: GoogleFonts.notoSerif(),
                          ),
                          leading: Image.asset(
                            value.cartItems[index][2],
                            height: 36,
                          ),
                          subtitle: Text(
                            "\$${value.cartItems[index][1]}",
                            style: GoogleFonts.notoSerif(),
                          ),
                          trailing: IconButton(
                            onPressed: () =>
                                Provider.of<CartModel>(context, listen: false)
                                    .removeItemFromCart(index),
                            icon: const Icon(Icons.cancel),
                          ),
                        ),
                      ),
                    );
                  }),
            ),

            // total + payment
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(36.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total Price",
                            style: TextStyle(color: Colors.grey[100])),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "\$${value.calculateTotalPrice()}",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                    // pay now button

                    GestureDetector(
                      onTap: () async {
                        const url = 'https://flutter.io';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green.shade100),
                            borderRadius: BorderRadius.circular(12.0)),
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: const [
                            Text(
                              "Pay Now",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 16,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      })),
    );
  }
}
