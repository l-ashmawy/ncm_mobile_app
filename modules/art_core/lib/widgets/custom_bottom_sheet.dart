import 'package:art_core/art_core.dart';

void showCustomBottomSheet<T>(
  BuildContext context,
  List<String> data,
  Function onSelectItem, {
  String? emptyText,
}) {
  showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      context: context,
      backgroundColor: AppColors.white,
      builder: (context) {
        if (data.isEmpty) {
          return Column(
            children: [
              Image.asset("assets/images/empty_view_image.svg"),
              AppText(text: emptyText ?? ""),
            ],
          );
        } else {
          return ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => TextButton(
                  onPressed: () {
                    onSelectItem(index);
                  },
                  child: AppText(
                    text: data[index],
                    color: AppColors.primaryColor,
                  )),
              separatorBuilder: (context, index) =>
                  const Divider(color: AppColors.grayWhite),
              itemCount: data.length);
        }
      });
}

///

void showCustomBottomSheetWithSelected<T>({
  String emptyText = '',
  String initialValue = '',
  required BuildContext context,
  required List<String> data,
  required Function(String val) onSelectItem,
}) {
  showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      context: context,
      builder: (context) {
        return _BuildCustomBottomSheet(
          data: data,
          onSelectItem: onSelectItem,
          emptyText: emptyText,
          initialVal: initialValue,
        );
      });
}

class _BuildCustomBottomSheet extends StatefulWidget {
  final List<String> data;

  final String emptyText;

  final Function(String val) onSelectItem;

  final String initialVal;

  const _BuildCustomBottomSheet(
      {super.key,
      required this.data,
      this.emptyText = '',
      required this.onSelectItem,
      this.initialVal = ''});

  @override
  State<_BuildCustomBottomSheet> createState() =>
      _BuildCustomBottomSheetState();
}

class _BuildCustomBottomSheetState extends State<_BuildCustomBottomSheet> {
  String selected = '';

  @override
  void initState() {
    super.initState();
    selected = widget.initialVal;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => TextButton(
            onPressed: () {
              selected = widget.data[index];
              widget.onSelectItem(selected);
              setState(() {});
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 16,
                  width: 16,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.secondaryColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selected == widget.data[index]
                            ? AppColors.secondaryColor
                            : Colors.transparent,
                        // border: Border.all(color: AppColors.secondaryColor)
                      ),
                    ),
                  ),
                ),
                AppText(
                  text: widget.data[index],
                ),
              ],
            )),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: widget.data.length);
  }
}
