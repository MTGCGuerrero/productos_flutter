import 'package:flutter/material.dart';
import 'package:products_app/models/models.dart';

class ProductFormProvider extends ChangeNotifier {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Product product;

  ProductFormProvider( this.product );

  updateAvailability( bool value ) {
    // ignore: avoid_print
    print(value);
    product.available = value;
    notifyListeners();
  }


  bool isValidForm() {

    // ignore: avoid_print
    print( product.name );
    // ignore: avoid_print
    print( product.price );
    // ignore: avoid_print
    print( product.available );

    return formKey.currentState?.validate() ?? false;
  }

}
