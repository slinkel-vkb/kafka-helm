{{/*
Common labels
*/}}
{{- define "vkb.commonLabels" -}}
app.kubernetes.io/part-of: {{ .Values.application }}
{{- if .Values.commonLabels }}
    {{- .Values.commonLabels | toYaml }}
{{- end -}}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "vkb.selectorLabels" -}}
app: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
All labels
*/}}
{{- define "vkb.labels" -}}
{{ include "vkb.commonLabels" . }}
{{ include "vkb.selectorLabels" . }}
{{- end -}}
