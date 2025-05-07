FROM gitpod/workspace-full

# Instal dependency sistem yang dibutuhkan Flutter Web
RUN sudo apt-get update && sudo apt-get install -y \
  clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev

# Clone Flutter SDK
RUN git clone https://github.com/flutter/flutter.git -b stable /home/gitpod/flutter

# Tambahkan Flutter ke PATH
ENV PATH="/home/gitpod/flutter/bin:/home/gitpod/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Jalankan flutter doctor (hanya untuk cache awal)
RUN flutter doctor
