import os
import json
import argparse

def rename_flacs_from_json(json_path, flac_folder):
    with open(json_path, 'r') as f:
        data = json.load(f)

    output_prefix = data.get("output_prefix")
    if not output_prefix:
        raise ValueError("No output_prefix found in JSON.")

    tracks = data.get("tracks", [])
    if not tracks:
        raise ValueError("No tracks found in JSON.")

    renamed = 0
    for track in tracks:
        track_number = track["track_number"]
        target_filename = track["file"]
        current_filename = f"{output_prefix}-{track_number}.flac"

        src_path = os.path.join(flac_folder, current_filename)
        dst_path = os.path.join(flac_folder, target_filename.replace(".wav", ".flac"))

        if os.path.exists(src_path):
            if src_path != dst_path:
                os.rename(src_path, dst_path)
                print(f"Renamed: {current_filename} → {os.path.basename(dst_path)}")
                renamed += 1
        else:
            print(f"⚠️ Missing: {current_filename}")

    print(f"\n✅ Completed: {renamed} files renamed.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Rename FLAC files based on tracks.json output filenames."
    )
    parser.add_argument("json_file", help="Path to the tracks.json file")
    parser.add_argument("flac_folder", help="Folder containing FLAC files to rename")

    args = parser.parse_args()
    rename_flacs_from_json(args.json_file, args.flac_folder)
