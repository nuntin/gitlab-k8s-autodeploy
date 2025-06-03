{{- define "basic-app.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "basic-app.fullname" -}}
{{ include "basic-app.name" . }}-{{ .Release.Name }}
{{- end }}

{{- define "basic-app.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}