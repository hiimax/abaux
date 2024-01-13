import '../../res/import/import.dart';

class CustomTextFormField extends StatelessWidget {
  final String? Function(String? val)? validator;
  final String? label;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final Function(String? val)? onchanged;
  final Function(String? val)? onfieldSubmitted;
  final Function(String? val)? onsaved;
  final Function()? onTap;
  final TextInputAction? textInputAction;
  final String? hintText;
  final String? titleText;
  final TextStyle? textStyle;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final Color? fillColor;
  final Color? enabledBorderColor;
  final Color? errorBorderColor;
  final Color? focusedBorderColor;
  final double? height;
  final List<TextInputFormatter>? textInputFormatter;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final bool? readonly;
  final bool? autofocus;
  final bool? autocorrect;
  const CustomTextFormField({
    Key? key,
    this.validator,
    this.autofocus,
    this.autocorrect,
    this.label,
    this.controller,
    this.onfieldSubmitted,
    this.textInputType,
    this.obscureText,
    this.onchanged,
    this.onsaved,
    this.textInputAction,
    this.hintText,
    this.minLines,
    this.titleText,
    this.textStyle,
    this.maxLength,
    this.maxLines,
    this.height,
    this.textInputFormatter,
    this.readonly,
    this.enabledBorderColor,
    this.errorBorderColor,
    this.focusedBorderColor,
    this.suffixIcon,
    this.prefixIcon,
    this.onTap,
    this.fillColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      controller: controller,
      keyboardType: textInputType,
      inputFormatters: textInputFormatter,
      textInputAction: textInputAction,
      validator: validator,
      onChanged: onchanged,
      onSaved: onsaved,
      maxLength: maxLength,
      maxLines: maxLines ?? 1,
      minLines: minLines,
      readOnly: readonly ?? false,
      onTap: onTap,
      autofocus: autofocus ?? false,
      autocorrect: autocorrect ?? false,
      onFieldSubmitted: onfieldSubmitted,
      style: textStyle ??
          AbauxTextStyle.normal
              .copyWith(fontWeight: FontWeight.w400, color: abauxBlack),
      decoration: InputDecoration(
        hintText: hintText,
        labelText: label,
        hintStyle: AbauxTextStyle.normal.copyWith(
            fontWeight: FontWeight.w400, color: abauxBlack.withOpacity(0.4)),
        fillColor: fillColor ?? abauxTransparent,
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: enabledBorderColor ?? const Color(0xffD9D9D9),
            ),
            borderRadius: BorderRadius.circular(5.r)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: errorBorderColor ?? Colors.red),
            borderRadius: BorderRadius.circular(5.r)),
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: focusedBorderColor ?? abauxPrimaryColor),
            borderRadius: BorderRadius.circular(5.r)),
        labelStyle: AbauxTextStyle.normal
            .copyWith(color: abauxPrimaryColor, fontWeight: FontWeight.w700),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefixIconConstraints: BoxConstraints(
          minWidth: 13.w,
        ),
      ),
    );
  }
}

Widget inputFieldTitle(title, {Color? color}) => Padding(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: Text(title,
          style: AbauxTextStyle.normal.copyWith(
              fontSize: 18,
              color: color ?? abauxBlack,
              fontWeight: FontWeight.w600)),
    );

class CustomTextFormFieldDropDown extends StatelessWidget {
  final String? Function(String? val)? validator;
  final String? label;
  final Function(String? val)? onchanged;
  final Function(String? val)? onsaved;
  final Function()? onTap;
  final String? hintText;
  final String? titleText;
  final TextStyle? textStyle;
  final List<String> items;
  final Color? fillColor;
  final double? height;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextFormFieldDropDown({
    Key? key,
    required this.items,
    this.validator,
    this.label,
    this.onchanged,
    this.onsaved,
    this.hintText,
    this.titleText,
    this.textStyle,
    this.height,
    this.suffixIcon,
    this.prefixIcon,
    this.onTap,
    this.fillColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: DropdownButtonFormField(
        validator: validator,
        onChanged: onchanged,
        onSaved: onsaved,
        onTap: onTap,
        icon: SizedBox(
          width: (24),
          height: (24),
          child: Image.asset('down'.mobilepng),
        ),
        style: textStyle ??
            AbauxTextStyle.normal.copyWith(
              fontWeight: FontWeight.w400,
              color: abauxBlack,
            ),
        decoration: InputDecoration(
          hintText: hintText,
          labelText: label,
          hintStyle: AbauxTextStyle.normal
              .copyWith(fontWeight: FontWeight.w400, color: abauxTextColor),
          fillColor: fillColor ?? abauxTransparent,
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffD9D9D9),
              ),
              borderRadius: BorderRadius.circular(4)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(4)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: abauxPrimaryColor),
              borderRadius: BorderRadius.circular(4)),
          labelStyle: AbauxTextStyle.normal
              .copyWith(color: abauxPrimaryColor, fontWeight: FontWeight.w700),
          prefixIcon: prefixIcon,
          suffix: suffixIcon,
          prefixIconConstraints: const BoxConstraints(
            minWidth: 13,
          ),
        ),
        items: items.map((option) {
          return DropdownMenuItem<String>(
            value: option,
            child: Text(
              option,
              style: AbauxTextStyle.normal
                  .copyWith(fontWeight: FontWeight.w400, color: abauxTextColor),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class CustomRadio extends StatelessWidget {
  final String value;
  final String? groupValue;
  final Function(String?) onChanged;
  const CustomRadio({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.groupValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: abauxBlack,
        border: Border.all(
          color: value == groupValue ? abauxPrimaryColor : abauxGrey,
          width: value == groupValue ? 1 : 0.5,
        ),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          if (value == groupValue)
            BoxShadow(
              blurRadius: 8,
              color: abauxPrimaryColor.withOpacity(0.24),
            ),
        ],
      ),
      child: RadioListTile(
        selected: value == groupValue,
        tileColor: abauxBlack,
        selectedTileColor: abauxBlack,
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        activeColor: abauxPrimaryColor,
        visualDensity: VisualDensity.compact,
        title: Text(
          value,
          style: AbauxTextStyle.subNormal.copyWith(
            fontWeight: FontWeight.w500,
            color: abauxTextColor,
          ),
        ),
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding: const EdgeInsets.symmetric(
            // horizontal: 20,
            // vertical: 16,
            ),
      ),
    );
  }
}
