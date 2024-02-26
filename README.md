# Convert markdown to HTML

Github action for converting markdown files into HTML. Depends on [showdownjs](https://showdownjs.com/).

## Inputs

### `directory`

Specifies which directory you want to convert your files in. Default: `.`

### `args`

Specifies which arguments to use with converter. List of available arguments are listed [here](https://showdownjs.com/docs/available-options/).

## Example usage

```yaml
steps:
  - name: Convert markdown file to html
    uses: Cpavrai/convert-markdown-to-html@v2
    with:
      directory: './docs' # Default '.'
      args: '-u UTF8 -c ghCompatibleHeaderId -c emoji -c tables' # Default ''
```

## Licence

MIT