import 'package:stackbuld/commons.dart';

part 'add_product_logic.dart';

class AddProductUi extends StatefulWidget {
  const AddProductUi({super.key});

  @override
  State<AddProductUi> createState() => _AddProductUi();
}

class _AddProductUi extends AddProductLogic {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Add a new product'.toUpperCase(),
            style: GoogleFonts.poppins(),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: appSecondaryColor,
                        )
                      ],
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        // name field
                        PriceRangeBox(
                          boxLabel: 'Product Name',
                          controller: productNameController,
                        ),

                        // price and rating
                        Row(
                          children: [
                            PriceRangeBox(
                              boxLabel: 'Price',
                              controller: priceController,
                            ),
                            sizedBoxWidthOf8,
                            PriceRangeBox(
                              boxLabel: 'Rating',
                              controller: ratingController,
                            ),
                          ],
                        ),

                        // category dropdown & image
                        Row(
                          children: [
                            // image
                            PriceRangeBox(
                              boxLabel: 'Product Image',
                              controller: productImageController,
                            ),

                            sizedBoxWidthOf8,

                            // category dropdown

                            // DropdownButtonFormField<String>(
                            //   value: _selectedCatalogue,
                            //   decoration: const InputDecoration(
                            //     labelText: 'Select Catalog',
                            //   ),
                            //   onChanged: dropdownCallback,
                            //   items: catalogs.map((catalog) {
                            //     return DropdownMenuItem(
                            //       value: catalog,
                            //       child: Text(catalog),
                            //     );
                            //   }).toList(),
                            // ),
                            DropdownButton(
                              borderRadius: BorderRadius.circular(6),
                              // dropdownColor: appPrimaryColor,
                              onChanged: dropdownCallback,
                              value: _selectedCatalogue,
                              items: const [
                                DropdownMenuItem(
                                  value: 'food',
                                  child: Text('Food'),
                                ),
                                DropdownMenuItem(
                                  value: 'sports',
                                  child: Text('Sports'),
                                ),
                                DropdownMenuItem(
                                  value: 'cosmetics',
                                  child: Text('Cosmetics'),
                                ),
                                DropdownMenuItem(
                                  value: 'devices',
                                  child: Text('Devices'),
                                ),
                              ],
                            ),
                          ],
                        ),

                        // image
                        // PriceRangeBox(boxLabel: 'Name'),

                        // description
                        PriceRangeBox(
                          boxLabel: 'Description',
                          controller: descriptionController,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // add button
              CustomButton(
                buttonLabel: 'Add',
                onTap: addProduct,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
