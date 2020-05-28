# steps_calculator

Calculate steps per month and total steps from steps file

Demonstration of "monkey-patching" in Crystal

## Installation

TODO: Write installation instructions here

## Usage

The steps file should be located in `data/steps.txt`

The format of the file should be as follows:
```
08-mar-2020 - 12887
```
(day-with-0-padding)-(3-letter month)-(full year) - (steps-count)

Example:

```
08-mar-2020 - 12887
09-mar-2020 - 4019
10-mar-2020 - 3073
```

## Testing

You can run the tests by executing:

```console
foo@bar:~$ crystal spec
```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/evvo/steps_calculator/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Evtimiy Mihaylov](https://github.com/evvo) - creator and maintainer
