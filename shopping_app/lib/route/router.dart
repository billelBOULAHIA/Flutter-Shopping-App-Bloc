import 'package:flutter/material.dart';
import 'package:shopping_app/feature/auth/login/login_screen.dart';
import 'package:shopping_app/feature/auth/register/register_screen.dart';
import 'package:shopping_app/feature/cart/ui/cart_screen.dart';
import 'package:shopping_app/feature/credit_card_details/card_details_screen.dart';
import 'package:shopping_app/feature/discover/model/product.dart';
import 'package:shopping_app/feature/home/home.dart';
import 'package:shopping_app/feature/product_details/ui/product_details_screen.dart';
import 'package:shopping_app/feature/shipping/shipping_method_screen.dart';

import 'route_constants.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstant.homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case RouteConstant.productDetailsRoute:
        Product product = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => ProductDetailsScreen(
                  product: product,
                ));
      case RouteConstant.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case RouteConstant.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case RouteConstant.cart:
        return MaterialPageRoute(builder: (_) => CartScreen());
      case RouteConstant.shippingMethod:
        return MaterialPageRoute(builder: (_) => ShippingMethodScreen());
      case RouteConstant.creditCard:
        return MaterialPageRoute(builder: (_) => CreditCardDetailsScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
