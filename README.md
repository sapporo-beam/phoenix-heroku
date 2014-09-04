# PhoenixHeroku

To start your new Phoenix application you have to:

1. Install dependencies with `mix deps.get`
2. Start Phoenix router with `mix phoenix.start`

Now you can visit `localhost:4000` from your browser.

## Deploying

You need adding files to deploy on [Heroku](https://www.heroku.com/).

```
.
├── elixir_buildpack.config # Specify Elixir's version
└── Procfile                # mix phoenix.start
```

Then you should follow these commands.

```
git init
heroku apps:create NAME-OF-YOUR-APP --buildpack https://github.com/HashNuke/heroku-buildpack-elixir.git
heroku config:set MIX_ENV=prod
git add -A && git commit -m 'Initial commit'
git push heroku master
```

## Notes

* If you choose to change the application's structure, you could manually start the router from your code like this `PhoenixHeroku.Router.start`
