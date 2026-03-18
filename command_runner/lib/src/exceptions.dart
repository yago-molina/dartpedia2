class ArugementException extends FormatException{
  final String? command;

  final String? argumentName;

  ArugementException(
    super.message, [
      this.command,
      this.argumentName,
      super.source,
      super.offset,
    ]
  );
  @override
  String toString(){
    return 'ArgumentException: $message';
  }
}