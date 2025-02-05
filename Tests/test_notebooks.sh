#!/usr/bin/env bash

# pipe the exit code to parent process
set -ex
set -o pipefail

cd ./dea-notebooks
pip3 install ./Tools

# Test DEA Tools functions
pytest Tests/dea_tools

# Test Juputer Notebooks
pytest --durations=10 --nbval-lax Beginners_guide DEA_products --ignore DEA_products/DEA_Wetlands_Insight_Tool.ipynb How_to_guides/Animated_timeseries.ipynb How_to_guides/Contour_extraction.ipynb How_to_guides/Calculating_band_indices.ipynb How_to_guides/Downloading_data_with_STAC.ipynb How_to_guides/Exporting_GeoTIFFs.ipynb How_to_guides/Generating_composites.ipynb How_to_guides/Image_segmentation.ipynb How_to_guides/Opening_GeoTIFFs_NetCDFs.ipynb How_to_guides/Pansharpening.ipynb How_to_guides/Planetary_computer.ipynb How_to_guides/Polygon_drill.ipynb How_to_guides/Principal_component_analysis.ipynb How_to_guides/Rasterize_vectorize.ipynb How_to_guides/Tidal_modelling.ipynb How_to_guides/Using_load_ard.ipynb How_to_guides/Virtual_products.ipynb Real_world_examples/Coastal_erosion.ipynb Real_world_examples/Intertidal_elevation.ipynb


