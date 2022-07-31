import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class {{.Step.Name}}StepContent extends StatefulWidget {
  const {{.Step.Name}}StepContent({Key? key}) : super(key: key);

  @override
  State<{{.Step.Name}}StepContent> createState() => _{{.Step.Name}}StepContentState();
}

class _{{.Step.Name}}StepContentState extends State<{{.Step.Name}}StepContent> {
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
