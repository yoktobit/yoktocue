{{ $F := . }}
FormBuilderTextField(
    name: '{{$F.Name}}',
    decoration: const InputDecoration(labelText: '{{$F.Label}}'),
    keyboardType: TextInputType.number,
    {{ if $F.Length }}
    maxLength: {{$F.Length}},
    {{ end }}
    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    validator:
        FormBuilderValidators.numeric(errorText: "Feld muss eine Zahl sein"),
),