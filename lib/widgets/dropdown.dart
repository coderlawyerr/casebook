import 'package:flutter/material.dart';

class DropdownMenuExample extends StatefulWidget {
  // Bir liste oluşturuyoruz
  final List<String> list = <String>[
    'Seç',
    'Müşteri',
    'Tedarikçi',
  ];

  // DropdownMenuExample sınıfının yapıcı metodu
  DropdownMenuExample({Key? key}) : super(key: key);

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  // Dropdown değerini saklayacak bir değişken tanımlıyoruz
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    // Dropdown değerini listenin ilk elemanıyla başlatıyoruz
    dropdownValue = widget.list.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      // Dropdown değerini belirliyoruz
      value: dropdownValue,
      // Dropdown değeri değiştikçe çağrılacak olan fonksiyon
      onChanged: (String? newValue) {
        // setState fonksiyonunu kullanarak widget'ın yeniden çizilmesini sağlıyoruz
        setState(() {
          dropdownValue = newValue!;
        });
      },
      // Dropdown için görüntülenecek öğeler
      items: widget.list.map<DropdownMenuItem<String>>((String value) {
        // Her öğe için bir DropdownMenuItem oluşturuyoruz
        return DropdownMenuItem<String>(
          // Öğenin değerini belirliyoruz
          value: value,
          // Öğenin görüntülenecek metnini belirliyoruz
          child: Text(value),
        );
      }).toList(),
    );
  }
}
