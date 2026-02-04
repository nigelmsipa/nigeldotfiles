config.load_autoconfig()

# Transcript extraction
config.bind(',gt', 'spawn --userscript get_transcript')
config.bind(',gh', 'hint links spawn --userscript get_transcript')
