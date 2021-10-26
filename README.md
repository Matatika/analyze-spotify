# analyze-spotify
Meltano project [file bundle](https://meltano.com/docs/command-line-interface.html#file-bundle) of Matatika datasets for [tap-spotify](https://github.com/Matatika/tap-spotify).

Files:
- [`analyze/datasets/tap-spotify`](./bundle/analyze/datasets/tap-spotify) (directory)

To add [tap-spotify](https://github.com/Matatika/tap-spotify) and its related plugins to your Matatika workspace:
```yaml
extractors:
  - name: tap-spotify
    pip_url: git+https://github.com/Matatika/tap-spotify.git
    capabilities:
      - state
      - discover
      - catalog
    settings:
      - name: client_id
        kind: password
      - name: client_secret
        kind: password
      - name: refresh_token
        kind: password
transforms:
  - name: dbt-tap-spotify
    namespace: tap_spotify
    pip_url: https://github.com/Matatika/dbt-tap-solarvista.git
    vars:
      schema: "{{ env_var('DBT_SOURCE_SCHEMA') }}"
files:
  - name: analyze-spotify
    namespace: tap_spotify
    update:
      analyze/datasets/tap-spotify: true
    pip_url: git+https://github.com/Matatika/analyze-spotify.git
```

Add plugin to your Meltano project:
```bash
# Add only the file bundle
meltano add files analyze-spotify

# Add the file bundle as a related plugin through adding the Spotify extractor
meltano add extractor --include-related tap-spotify
```