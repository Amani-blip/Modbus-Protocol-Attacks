import os
import subprocess

def create_directory_structure(source_root, target_root):
    for root, dirs, files in os.walk(source_root):
        # Construct the path in the target directory
        relative_path = os.path.relpath(root, source_root)
        target_path = os.path.join(target_root, relative_path)
        
        # Create the corresponding directory in the target structure
        os.makedirs(target_path, exist_ok=True)

def convert_pcap_to_json(source_root, target_root):
    for root, dirs, files in os.walk(source_root):
        for file in files:
            if file.endswith(".pcap"):
                source_file_path = os.path.join(root, file)
                # Construct the target file path
                relative_path = os.path.relpath(root, source_root)
                target_dir_path = os.path.join(target_root, relative_path)
                json_file_name = os.path.splitext(file)[0] + ".json"
                target_file_path = os.path.join(target_dir_path, json_file_name)

                # Skip conversion if JSON file already exists
                if not os.path.exists(target_file_path):
                    # Convert the .pcap file to .json
                    command = f"tshark -r '{source_file_path}' -T json > '{target_file_path}'"
                    print(f"Converting {source_file_path} to {target_file_path}...")
                    subprocess.run(command, shell=True)
                else:
                    print(f"Skipping {source_file_path} as JSON file already exists.")

if __name__ == "__main__":
    #C:\Users\amani\OneDrive - University of Ottawa\CSI4142\captures1_v2\captures1_v2C:\Users\amani\OneDrive - University of Ottawa\CSI4142\captures1_v2\captures1_v2
    source_root = "/Users/amani/OneDrive - University of Ottawa/CSI4142/captures1_v2"
    target_root = "/Users/amani/OneDrive - University of Ottawa/CSI4142/captures1_v2/json_outputs/captures1_v2"

    print("Creating directory structure...")
    create_directory_structure(source_root, target_root)

    print("Converting .pcap files to .json...")
    convert_pcap_to_json(source_root, target_root)