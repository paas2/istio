{{- define "network.name" -}}
{{- default "default" .Values.global.clusterName }}-net
{{- end }}

{{- define "mesh.id" -}}
{{- default "sahab2" .Values.global.meshId }}
{{- end }}

