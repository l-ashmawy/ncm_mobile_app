import 'package:art_core/art_core.dart';

class AppTextField extends StatelessWidget {
  final bool? readOnly;
  final int? maxLines;
  final String? label;
  final String hint;
  final TextStyle? hintStyle;
  final bool isSelectable;

  final bool darkOrAuth;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;

  final String? errorText;
  final Color? borderColor;
  final Color? labelColor;

  final bool isPassword;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;

  final int? maxLength;

  final VoidCallback? onTap;

  final String? initialText;

  final double contentPaddingVertical;

  final Color? fillColor;
  final Color? hintColor;
  final Color? textColor;
  final bool? filled;
  final bool? enableBorder;

  const AppTextField({
    Key? key,
    this.readOnly = false,
    this.maxLines = 1,
    this.onTap,
    required this.hint,
    this.label,
    this.textInputType,
    this.hintColor,
    this.suffixIcon,
    this.prefixIcon,
    this.darkOrAuth = false,
    this.isPassword = false,
    this.validator,
    this.onChanged,
    this.errorText,
    this.initialText,
    this.borderColor,
    this.hintStyle,
    this.isSelectable = false,
    this.controller,
    this.maxLength,
    this.contentPaddingVertical = 15,
    this.fillColor,
    this.filled,
    this.labelColor,
    this.enableBorder = true,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null && label!.isNotEmpty)
          AppText(
              text: label!,
              fontSize: 16,
              color: labelColor ?? AppColors.secondaryColor),
        TextFormField(
          controller: controller,
          autofocus: false,
          onTap: onTap ?? () {},
          initialValue: initialText,
          enabled: true,
          onEditingComplete: () {
            FocusScope.of(context).unfocus();
          },
          onChanged: onChanged,
          readOnly: readOnly ?? false,
          maxLines: maxLines,
          keyboardType: textInputType,
          obscureText: isPassword,
          maxLength: maxLength,
          style: TextStyle(
            color: textColor ?? AppColors.secondaryColor,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          decoration: InputDecoration(
            fillColor: fillColor,
            filled: filled,
            border: enableBorder == false
                ? OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8))
                : Theme.of(context).inputDecorationTheme.border?.copyWith(
                    borderSide: BorderSide(
                        color: borderColor ?? AppColors.secondaryColor)),
            disabledBorder: enableBorder == false
                ? OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8))
                : Theme.of(context)
                    .inputDecorationTheme
                    .disabledBorder
                    ?.copyWith(
                        borderSide: BorderSide(
                            color: borderColor ?? AppColors.secondaryColor)),
            enabledBorder: enableBorder == false
                ? OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8))
                : Theme.of(context)
                    .inputDecorationTheme
                    .enabledBorder
                    ?.copyWith(
                        borderSide:
                            BorderSide(color: borderColor ?? AppColors.grey)),
            focusedBorder: enableBorder == false
                ? OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8))
                : Theme.of(context)
                    .inputDecorationTheme
                    .focusedBorder
                    ?.copyWith(
                        borderSide: BorderSide(
                            color: borderColor ?? AppColors.secondaryColor)),
            focusedErrorBorder: enableBorder == false
                ? OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8))
                : Theme.of(context).inputDecorationTheme.focusedErrorBorder,
            errorBorder: enableBorder == false
                ? OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8))
                : Theme.of(context).inputDecorationTheme.errorBorder,
            contentPadding: EdgeInsets.symmetric(
                vertical: contentPaddingVertical, horizontal: 8),
            hintText: hint,
            hintStyle: Theme.of(context)
                .inputDecorationTheme
                .hintStyle!
                .copyWith(color: hintColor, fontWeight: FontWeight.w400),
            alignLabelWithHint: true,
            errorText:
                errorText == null || errorText!.isEmpty || errorText == ''
                    ? null
                    : errorText,
            errorMaxLines: 3,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
