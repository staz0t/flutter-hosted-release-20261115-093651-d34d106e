import 'dart:convert';
import 'dart:io';

import 'package:contributor_helper/contributor_helper.dart';

void main() {
  final output = Platform.environment['PROOF_OUTPUT'] ?? 'execution-receipt.json';
  File(output).writeAsStringSync('${jsonEncode(probeReleaseEnvironment())}\n');
}
