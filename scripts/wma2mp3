#!/bin/bash

## Run this in the directory where the .wma files are that you want to convert

# Is ffmpeg even installed?
if ! command -v ffmpeg > /dev/null; then
  echo "ffmpeg is not installed. Please install it and try again."
  exit 1
fi

echo -en '\n'
echo "Okay lets convert"
echo -en '\n'
sleep 1

# Set the input directory (current dir)
input_dir="./"

# Set the output directory
output_dir="./converted"

# Create the output directory if it doesn't exist
if [ ! -d "$output_dir" ]; then
  mkdir "$output_dir"
fi

# Find all .wma files in the input directory & convert to .mp3 using highest quality
find "$input_dir" -name "*.wma" -exec bash -c '
  # Set the input file and output file names
  input_file=$0
  output_file="'$output_dir'/${0%.*}.mp3"

  # Convert the file
  ffmpeg -i "$input_file" -codec:a libmp3lame -qscale:a 0 "$output_file"

  echo "Converted $input_file to $output_file"
' {} \;

echo -en '\n'
echo "Conversion complete"
