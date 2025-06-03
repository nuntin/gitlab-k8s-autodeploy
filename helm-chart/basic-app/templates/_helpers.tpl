{{- define "basic-app.name" -}}
basic-app
{{- end }}

{{- define "basic-app.fullname" -}}
{{ .Release.Name }}-{{ include "basic-app.name" . }}
{{- end }}