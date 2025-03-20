BASE_FOLDER="/home/siyanhu/Gits/gaussian_surfels/scene_corridor/images"

OUT_FOLDER="/home/siyanhu/Gits/gaussian_surfels/scene_corridor/normals"

for SUBFOLDER in "$BASE_FOLDER"/*/; do
  # Check if it's a directory
  if [ -d "$SUBFOLDER" ]; then
    SUBFOLDER_NAME=$(basename "$SUBFOLDER")
    echo "Processing $SUBFOLDER_NAME"
    OUTPUT_PATH="$OUT_FOLDER/$SUBFOLDER_NAME"
    mkdir -p "$OUTPUT_PATH"
    python estimate_normal.py --img_path $SUBFOLDER --output_path $OUTPUT_PATH
  fi
done