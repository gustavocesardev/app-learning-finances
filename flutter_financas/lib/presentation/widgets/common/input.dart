import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

class Input extends StatelessWidget {

  final String placeholderText;
  final bool passwordType;

  const Input({
    super.key,
    required this.placeholderText,
    this.passwordType = false
  });

  @override
  Widget build(BuildContext context) {

    return TextField(
      obscureText: passwordType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),   
        hintText: placeholderText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(7.5)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstants.primaryColor,
            width: 1.5, 
          ),
          borderRadius: BorderRadius.all(Radius.circular(7.5)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstants.secondColor,
            width: 1.5, 
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        hintStyle: const TextStyle(color: ColorConstants.secondColor)
      ),
    );
  }
}

class CustomDropdownInput extends StatelessWidget {
  final String? value;
  final List<Map<String, dynamic>> items;
  final Function(String?) onChanged;
  final String hintText;

  const CustomDropdownInput({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    // Verificando se a lista de itens não está vazia e se o valor é válido
    String? selectedValue = value;

    if (selectedValue == null || !items.any((item) => item['id'] == selectedValue)) {
      // Se o valor for null ou não estiver presente, usa o primeiro item da lista como padrão
      if (items.isNotEmpty) {
        selectedValue = items.first['id'];
      } else {
        // Se a lista estiver vazia, manter null para evitar erro
        selectedValue = null;
      }
    }

    return InputDecorator(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
        hintText: hintText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(7.5)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstants.primaryColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(7.5)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstants.secondColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          value: selectedValue, // Usa o valor que foi ajustado
          icon: const Icon(
            Icons.arrow_drop_down_outlined,
            color: ColorConstants.primaryColor,
          ),
          iconSize: 24,
          elevation: 16,
          style: const TextStyle(color: ColorConstants.primaryColor),
          onChanged: onChanged,
          items: items.map<DropdownMenuItem<String>>((Map<String, dynamic> item) {
            return DropdownMenuItem<String>(
              value: item['id'], // Usando 'id' como valor
              child: Text(item['name']), // Mostrando 'tipo' ou 'periodo'
            );
          }).toList(),
        ),
      ),
    );
  }
}