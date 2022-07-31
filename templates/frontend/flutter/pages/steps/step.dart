import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormStepContent extends StatefulWidget {
  const FormStepContent({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FormStepContent> createState() => _FormStepContentState();
}

class _FormStepContentState extends State<FormStepContent> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 700,
      ),
      child: Column(children: [
        {{ range $F := .Step.Fields}}
        FormBuilderTextField(
          name: '{{$F.Name}}',
          decoration: const InputDecoration(labelText: '{{$F.Label}}'),
        ),
        {{end}}
      ]),
    );
  }
}
