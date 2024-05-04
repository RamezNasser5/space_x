import 'package:flutter/widgets.dart';
import 'package:space_x/core/helper/helper_class.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/core/utils/styles.dart';
import 'package:space_x/core/widgets/custom_item.dart';
import 'package:space_x/features/overview/logic/campany_info/campany_info_cubit.dart';

class InfoBodyListView extends StatelessWidget {
  const InfoBodyListView({
    super.key,
    required this.items,
    required this.state,
  });

  final List<String> items;
  final CompanyInfoSuccess state;

  @override
  Widget build(BuildContext context) {
    List<String> values = HelperClass().companyInfoMapToList(state);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 400,
            height: 100,
            decoration: BoxDecoration(
                color: linearPrimaryColor2,
                borderRadius: BorderRadius.circular(23)),
            child: const Text(
              'Info Body',
              style: Style.titelStyle,
            ),
          ),
          Flexible(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return CustomItem(
                    itemname: items[index],
                    itemvalue: values[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
