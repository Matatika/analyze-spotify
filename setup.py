from setuptools import setup, find_packages

setup(
    name="analyze-spotify",
    version="0.1.0",
    description="Meltano project file bundle of Matatika datasets for Spotify",
    packages=find_packages(),
    package_data={"bundle": [
        "analyze/datasets/tap-spotify/*.yml",
        "analyze/datasets/tap-spotify/*.yaml"        
        ]}
)