// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ar';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "categories": MessageLookupByLibrary.simpleMessage("Categories"),
        "category1_desc": MessageLookupByLibrary.simpleMessage(
            "Players must have won the same award. Awards: Golden Boot, Ballon Dor, UEFA Poty."),
        "category1_title": MessageLookupByLibrary.simpleMessage("Same Award"),
        "category2_desc": MessageLookupByLibrary.simpleMessage(
            "Players must have the same Nation."),
        "category2_title": MessageLookupByLibrary.simpleMessage("Same Nation"),
        "category3_desc": MessageLookupByLibrary.simpleMessage(
            "Players must have played for the same Club. Not necessary at the same time."),
        "category3_title": MessageLookupByLibrary.simpleMessage("Same Club"),
        "category4_desc": MessageLookupByLibrary.simpleMessage(
            "Players must have played in the same League. Not necessary at the same time."),
        "category4_title": MessageLookupByLibrary.simpleMessage("Same League"),
        "category5_desc": MessageLookupByLibrary.simpleMessage(
            "Players must have won the same Trophy. Trophies: Top 5 Leagues, UCL, Europa League, World Cup, Euro, Copa America, AFCON."),
        "category5_title": MessageLookupByLibrary.simpleMessage("Same Trophy"),
        "category6_desc": MessageLookupByLibrary.simpleMessage(
            "Players plays in the same position."),
        "category6_title":
            MessageLookupByLibrary.simpleMessage("Same Position"),
        "how_to_play": MessageLookupByLibrary.simpleMessage("How To Play?"),
        "how_to_play_desc": MessageLookupByLibrary.simpleMessage(
            "Connect one Player to another by a category. You can choose each category 7 times in one round. Streak stops when 2 players are not connected. You have 3 lives and 3 skips"),
        "loading": MessageLookupByLibrary.simpleMessage("Loading ....."),
        "play": MessageLookupByLibrary.simpleMessage("Play"),
        "sound": MessageLookupByLibrary.simpleMessage("Sound")
      };
}
