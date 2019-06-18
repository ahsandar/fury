`Github` repo is a mirror of `Gitlab` repo

(Nick) `Fury` humanity's first line of defense against command line usage

Its a gem version of [Command Service ](https://github.com/ahsandar/command-service) to run multiple shell commands and get its output. It allows you to setup chain of commands need to be executed and also give a standard interface to run shell commands without worrying about different ruby syntax to execute command and capture the output.

Usage
===

`require 'fury'`

```
fury = Fury.new('echo Hell knows no Fury')
fury.execute # executes command and can be used again
```

```
fury.reset_cmd! # Used to clear command queue
```

```
fury = Fury.new('echo gonna have to ask you to exit the donut')
fury.execute! # Resets the command queue after execution to use for new command
```

```
# Execute command without creating a command queue
Fury.run_now('echo Director Fury is no longer in command. Override order 7-Alpha-1-1.')
```

```
#commands can be added to the queue for execution ,
#commands are combined using ';' for shell execution

fury = Fury.new('echo Hell knows no Fury')
fury.execute
fury << 'echo gonna have to ask you to exit the donut'
fury << 'echo Director Fury is no longer in command. Override order 7-Alpha-1-1.'
fury.execute!
```

```
#commands can be added to the queue for execution ,
#commands can be combined using desired separator for
#shell execution

fury = Fury.new('echo Hell knows no Fury')
fury.execute
fury.join('&')
fury.queue 'echo gonna have to ask you to exit the donut'
fury.join('&')
fury.queue 'echo Director Fury is no longer in command. Override order 7-Alpha-1-1.'
fury.execute!
```


TODO
===

- Add Specs
