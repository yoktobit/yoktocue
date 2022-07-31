import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
{{ range $S := .Page.Steps }}
import 'steps/step_{{ lower $S.Name }}.dart';
{{ end }}

class {{.Page.Name}}Page extends StatefulWidget {
  const {{.Page.Name}}Page({Key? key}) : super(key: key);

  @override
  State<{{.Page.Name}}Page> createState() => _{{.Page.Name}}PageState();
}

class _{{.Page.Name}}PageState extends State<{{.Page.Name}}Page> {
  int _step = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('{{ .Page.Label }}'),
      ),
      body: FormBuilder(
        child: Stepper(
          onStepContinue: stepContinue,
          currentStep: _step,
          steps: const [
            {{ range $S := .Page.Steps }}
            Step(
              title: Text('{{ $S.Name }}'),
              content: {{ $S.Name }}StepContent(),
            ),
            {{ end }}
          ],
        ),
      ),
    );
  }

  stepContinue() {
    setState(() {
      _step++;
    });
  }
}
