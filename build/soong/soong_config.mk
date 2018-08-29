add_json_str_omitempty = $(if $(strip $(2)),$(call add_json_str, $(1), $(2)))

$(eval _contents := $$(_contents)"Custom": {$$(newline))

$(eval _contents := $(subst $$(comma)$$(newline)__SV_END,$(newline),$$(_contents)__SV_END},$$(newline)))
