// Enum - representa um tipo de dado
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
      this.deafultValue,
      this.defaultHelp,
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