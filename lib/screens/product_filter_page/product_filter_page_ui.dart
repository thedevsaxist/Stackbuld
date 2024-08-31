import 'package:stackbuld/commons.dart';

part 'product_filter_page_logic.dart';

class ProductFilterPageUi extends StatefulWidget {
  const ProductFilterPageUi({super.key});

  @override
  State<ProductFilterPageUi> createState() => _ProductFilterPageUi();
}

class _ProductFilterPageUi extends ProductFilterPageLogic {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              CupertinoIcons.clear,
              color: Colors.white,
            ),
          ),
          backgroundColor: appPrimaryColor,
          centerTitle: false,
          title: const Text('Filter'),
        ),
        body: Column(
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
                        color: appShadowColor,
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // category filter
                      const FilterItems(
                        filterItemName: 'Category',
                      ),

                      // brand filter
                      const FilterItems(
                        filterItemName: 'Brand',
                      ),

                      // price filter
                      Text(
                        'Price (₦)',
                        style: GoogleFonts.poppins(
                          fontSize: fontSizeBody,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Row(
                        children: [
                          // price range from
                          PriceRangeBox(
                            boxLabel: 'from',
                          ),
                          sizedBoxWidthOf32,

                          // price range to
                          PriceRangeBox(
                            boxLabel: 'to',
                          )
                        ],
                      ),

                      Divider(
                        height: 40,
                        color: appShadowColor,
                      ),

                      Text(
                        'Rating',
                        style: GoogleFonts.poppins(
                          fontSize: fontSizeBody,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Column(
                        children: List.generate(
                          5,
                          (index) {
                            return Rating(
                              numberOfStars: index,
                            );
                          },
                        ),
                      ),

                      Divider(
                        height: 40,
                        color: appShadowColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // save button
            const CustomButton(buttonLabel: 'Save'),
            sizedBoxHeightOf16,
          ],
        ),
      ),
    );
  }
}
