{{- define "network.name" -}}
{{- default "default" .Values.global.clusterName }}-net
{{- end }}

{{- define "mesh.id" -}}
{{- default "default" .Values.global.clusterName }}-mesh
{{- end }}