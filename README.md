To run an example server locally, first activate the python virtual environment, then run:

``` 
make devserver
```

To build the publishable output:

```
pelican content/ -s publishconf.py -o .
```

Then push to `gh-pages` branch with

``` 
git push origin HEAD:gh-pages
```

The website uses the Seattle Supersonics palette from [here](https://www.color-hex.com/color-palette/72106).