import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

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
          {{ if eq $F.Type "html" }}
            {{ template "frontend/flutter/static_html_field.dart" $F.Content }}
          {{ else if eq $F.Type "int"}}
            {{ template "frontend/flutter/form_builder_int_field.dart" $F }}
          {{ else }}
            {{ template "frontend/flutter/form_builder_text_field.dart" $F }}
          {{ end }}
        {{end}}
      ]),
    );
  }
}
