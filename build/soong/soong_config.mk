add_json_str_omitempty = $(if $(strip $(2)),$(call add_json_str, $(1), $(2)))

$(eval _contents := $$(_contents)"Custom": {$$(newline))

$(call add_json_str_omitempty,	Additional_gralloc_10_usage_bits,	$(TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS))

$(eval _contents := $(subst $$(comma)$$(newline)__SV_END,$(newline),$$(_contents)__SV_END},$$(newline)))
