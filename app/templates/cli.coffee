fs = require('fs')
path = require('path')
log = require('verbalize')
argv = require('minimist')(process.argv.slice(2))

###
# Everything in the file should be customized
###

# Verbalize `runner`
log.runner = '<%= _.slugify(projectname) %>'
# Use `-f` or `--file` to specify the source file
file = argv._[0] or argv.f or argv.file or 'TODO.md'
# Use `-t` or `--task` to specify the text to append
task = argv._[1] or argv.t or argv.task
if !file
  log.error 'Please provide a source file, either as a first argument or with `-s`'
if !task
  log.error 'No tasks will be appended to "' + file + '" since you didn\'t specify anything.'

###
# Application
###

if !fs.existsSync(file)
  fs.writeFileSync file, '# Tasks\n\n'

fs.appendFile file, '- [ ] ' + task + '\n', (err) ->
  if err
    throw err
  log.writeln()
  log.writeln log.gray('  todo [appended] ') + '\'' + task + '\' to ' + log.bold(file)
  # If all is well, log a success message.
  log.success '  ' + log.runner + ' [done]'
  return
