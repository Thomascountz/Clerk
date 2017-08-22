# Clerk

## Installation
- Fork/Clone the repo
- `$ cd clerk`
- `$ bundle install`
- Make sure your local PostgreSQL server is running
- `$ rails db:create`
- `$ rails db:migrate`
- `$ rails db:migrate RAILS_ENV=test`
- Run specs: `$ rspec`
- `$ rails s`
- Navigate to `localhost:3000` in your browser

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch to your fork: `git push origin my-new-feature`
5. Submit a pull request!

## History

Splitting bills is something my roommies and I have to do every month. We use a spreadsheet that we copypaste into an email. How barbaric! This app exists to provide us (and you!) with some UI features that other split-payment apps don't have. And with Clerk, we can keep track of the apartment expenses besides just the bills, i.e. the $88 worth of toilet paper I bought last week... #UOMe.

## Credits

Mentor & Coach: [Christine](https://github.com/CZagrobelny)

Mentor & Coach: [Dave](https://github.com/davidmiller11)

## License

MIT License

Copyright (c) 2017 Thomas Countz

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
