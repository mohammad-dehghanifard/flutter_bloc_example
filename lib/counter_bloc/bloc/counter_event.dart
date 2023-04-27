import 'package:flutter/cupertino.dart';

@immutable
abstract class CounterEvent{}

class IncreaseEvent extends CounterEvent{}

class DecreaseEvent extends CounterEvent{}