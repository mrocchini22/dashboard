import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

List<Color> coloriPersone(
  Color colore,
  int valore,
) {
  List<Color> colori = [];
  int val = valore ~/ 20;
  int alpha = (valore % 20) * 13;
  int conta = val;
  while (conta != 0) {
    colori.add(colore);
    conta -= 1;
  }
  if (val != 5) {
    val += 1;
    if (alpha == 0) {
      colori.add(Color.fromARGB(255, 255, 255, 255));
    } else {
      colori.add(colore.withAlpha(alpha));
    }
    while (val != 5) {
      colori.add(Color.fromARGB(255, 255, 255, 255));
      val += 1;
    }
  }
  return colori;
}

Color coloreHM(
  Color startColor,
  Color endColor,
  double fraction,
  Color middleColor,
) {
  if (fraction <= 0.5) {
    // Prima sezione del gradiente
    double sectionFraction = fraction / 0.5;
    int red = startColor.red +
        ((middleColor.red - startColor.red) * sectionFraction).round();
    int green = startColor.green +
        ((middleColor.green - startColor.green) * sectionFraction).round();
    int blue = startColor.blue +
        ((middleColor.blue - startColor.blue) * sectionFraction).round();
    return Color.fromARGB(255, red, green, blue);
  } else {
    // Seconda sezione del gradiente
    double sectionFraction = (fraction - 0.5) / 0.5;
    int red = middleColor.red +
        ((endColor.red - middleColor.red) * sectionFraction).round();
    int green = middleColor.green +
        ((endColor.green - middleColor.green) * sectionFraction).round();
    int blue = middleColor.blue +
        ((endColor.blue - middleColor.blue) * sectionFraction).round();
    return Color.fromARGB(255, red, green, blue);
  }
}

List<int> valoriHM(List<ValoreHMStruct> valoriCat) {
  // scorri valoriCat e trova il minimo dentro valori ed anche il massimo
  List<int> valori = [];
  valoriCat.forEach((valore) {
    if (valore.hasValori()) {
      valori.addAll(valore.valori);
    }
  });
  int max = valori.isNotEmpty ? valori.reduce(math.max) : 0;
  int min = valori.isNotEmpty ? valori.reduce(math.min) : 0;
  return [min, max];
}

List<ValoreHMStruct> costruisciValori(
  List<String> xValues,
  List<String> yValues,
  List<int> valori,
) {
  List<ValoreHMStruct> ritornare = [];
  int inizio = 0;
  int lun = (valori.length / yValues.length).floor();
  yValues.forEach((name) {
    ValoreHMStruct elem = ValoreHMStruct(
        categoria: name,
        mesi: xValues,
        valori: valori.sublist(inizio * lun, (inizio + 1) * lun));
    ritornare.add(elem);
    inizio += 1;
  });
  return ritornare;
}

List<double> modificaVal(
  List<double> valori,
  int index,
  double value,
) {
  List<double> nuova = [];
  int indice = 0;
  valori.forEach(
    (element) {
      if (indice == index) {
        nuova.add(value);
      } else {
        nuova.add(1);
      }
      indice += 1;
    },
  );
  return nuova;
}

List<String> returnMonths(int number) {
  int i = 1;
  List<String> months = [];
  for (; i <= number; i++) {
    months.add(DateFormat.MMM().format(DateTime(1900, i)));
  }
  return months;
}

List<String> removeEvent(
  String element,
  List<String> lista,
) {
  List<String> vera = [];
  lista.forEach(
    (elemento) {
      if (elemento != element) {
        vera.add(elemento);
      }
    },
  );
  return vera;
}

DateTime controlTime(
  int flag,
  int minutes,
  DateTime date,
) {
  if (flag == 1) {
    return date.add(Duration(minutes: minutes));
  } else {
    return date.subtract(Duration(minutes: minutes));
  }
}
