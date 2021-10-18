# analyze-spotify
Meltano project [file bundle](https://meltano.com/docs/command-line-interface.html#file-bundle) of Matatika datasets for Spotify.

Files:
- [`analyze/datasets/tap-spotify`](./bundle/analyze/datasets/tap-spotify) (directory)

Add plugin to `discovery.yml`:
```yaml
files:
- name: analyze-spotify
  namespace: tap_spotify
  update:
    analyze/datasets: true
  repo: https://github.com/Matatika/analyze-spotify
  pip_url: git+https://github.com/Matatika/analyze-spotify.git
```

Add plugin to your Meltano project:
```bash
# Add only the file bundle
meltano add files analyze-spotify

# Add the file bundle as a related plugin through adding the Spotify extractor
meltano add extractor --include-related tap-spotify
```