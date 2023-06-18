# react-shaper

An example of using Code Shaper to create a custom CLI. This CLI generates a
fully opinionated React app, similar to
[create-react-app](https://create-react-app.dev/). See the
[how-to guide](https://www.code-shaper.dev/docs/how-to-guides/creating-a-custom-cli)
for more details.

To run this CLI, follow the steps below:

```shell
# Install the CLI
npm install -g react-shaper

# Change directory to a location where you create projects, e.g.
cd ~/projects

# Run React Shaper and follow the prompts
react-shaper
? App name? hello-world
? Package name used for publishing? @my-company/hello-world

Creating hello-world...
  package.json
  ...

Done. Now run:

  cd hello-world
  git init
  npm install
  git add .
  git commit -m "initial commit"
  npm run dev
```

Point your browser to http://localhost:3000 to see the home page.
