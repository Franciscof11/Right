import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:right/utils/const_colors.dart';

enum FormTypes {
  email,
  password,
  birthDate,
  generic,
}

class CustomTextFormField extends StatefulWidget {
  final String label;
  final Icon? prefixIcon;
  final bool isSecret;
  final TextEditingController controller;
  final FormTypes type;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? mask;
  final bool? disable;
  const CustomTextFormField({
    super.key,
    required this.label,
    this.prefixIcon,
    this.isSecret = false,
    required this.controller,
    required this.type,
    this.mask,
    this.keyboardType,
    this.disable,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscureText = false;

  @override
  void initState() {
    super.initState();
    obscureText = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.disable == true ? false : true,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.mask,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      controller: widget.controller,
      obscureText: obscureText,
      validator: (value) {
        switch (widget.type) {
          case FormTypes.email:
            if (value == null || value.isEmpty) {
              return 'Campo obrigatório!';
            }
            if (!widget.controller.text.contains('@') ||
                !widget.controller.text.contains('.com')) {
              return 'E-mail inválido!';
            }
            return null;

          case FormTypes.password:
            if (value == null || value.isEmpty) {
              return 'Campo obrigatório!';
            }
            return null;

          case FormTypes.birthDate:
            return null;

          case FormTypes.generic:
            if (value == null || value.isEmpty) {
              return 'Campo obrigatório!';
            }
            return null;
        }
      },
      cursorColor: LightColors().primary,
      style: GoogleFonts.raleway(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        suffixIconColor: LightColors().primary,
        labelText: widget.label,
        labelStyle: GoogleFonts.raleway(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        suffixIcon: widget.type == FormTypes.birthDate
            ? const Icon(
                Icons.calendar_month_outlined,
                size: 30,
              )
            : widget.isSecret
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                  )
                : null,

        prefixIcon: widget.prefixIcon,
        //
        // Borders
        //
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: LightColors().primary,
            width: 3,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: LightColors().primary,
            width: 1.5,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: LightColors().primary,
            width: 0.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
      ),
    );
  }
}
