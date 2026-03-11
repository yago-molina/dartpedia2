// Enum - representa um tipo de dado
import 'package:command_runner/command_runner.dart';

enum OptionType{flag, option}

abstract class Arg {
  String get name;
  String? get help;

  Object? get defaultValue;
  Object? get valueHelp;

  String get usage;
}

class Option extends Arg {
  Option(
    this.name, {
      required this.type,
      this.help,
      this.abbr,
      this.defaultValue,
      this.valueHelp,
    }
  );
  @override
  final String name;
  final OptionType type;
  @override
  final String? help;
  final String? abbr;
  @override
  final Object? defaultValue;
  final String? valueHelp;
  @override
  String get usage {
    if (abbr != null){
      return '-$abbr, -$name, -$help';
    }
    return '--$name --$help';
  }
}

abstract class Command extends Arg {
  @override
  String get name;
  String get description;
  bool get requiresArgument => false;
  late commandRunner runner;
  @override
  String? help;
  @override
  String? defaultValue;
  @override
  String valueHelp;
}
// @override - como ele extende de outra classe, que é a classe Arg, ele avisa pro programa que ele quer usar o daqui não o da outra classe