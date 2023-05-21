if [ $# -ne 5 ]; then
    echo "Usage: $0 <prompts_file_path> <features_file_path> <output_folder_path> <patch_name> <fps>"
    exit 1
fi

#     prompts_file_path: Path to the prompts file
#     features_file_path: Path to the features file
#     output_folder_path: Path to the output folder
#     patch_name: subfolder name for the output repository
#     fps: FPS for the video to generate
source /home2020/home/math/lwerey/V7_DSD/env/bin/activate
# include ffmpeg in the path
export /home2020/home/math/lwerey/V7_DSD/ffmpeg-5.1.1-amd64-static/
python /home2020/home/math/lwerey/V7_DSD/deforum_stable_diffusion_v07.py $1 $2 $3 $4 $5
