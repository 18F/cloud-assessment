
assessment.docx: assessment.md
	pandoc --to=docx --from=markdown --reference-doc=table-style.docx --output=$@ $<
