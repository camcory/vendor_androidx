$(eval _contents := $$(_contents)"Custom": {$$(newline))

$(eval _contents := $(subst $$(comma)$$(newline)__SV_END,$(newline),$$(_contents)__SV_END},$$(newline)))
