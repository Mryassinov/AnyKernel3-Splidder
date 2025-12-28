cat > README.md << 'EOF'
# AnyKernel3 - Kernel Splidder Edition

![License](https://img.shields.io/badge/License-AnyKernel3-blue.svg)
![Platform](https://img.shields.io/badge/Platform-Android-green.svg)
![Devices](https://img.shields.io/badge/Devices-Xiaomi%20SM6150-orange.svg)

Custom AnyKernel3 implementation for **Kernel Splidder** - A modified Xiaomi SM6150 kernel with KernelSU-Next support.

## 📱 Supported Devices

| Device | Codename | Status |
|--------|----------|--------|
| Redmi Note 10 Pro | sweet | ✅ Tested |
| Redmi K30 Pro / Poco F2 Pro | tucana | ✅ Supported |
| Mi Note 10 Lite | toco | ✅ Supported |
| Redmi K30 | phoenix | ✅ Supported |
| Redmi K20 / Mi 9T | davinci | ✅ Supported |

## 🚀 Usage

### For End Users
1. Download kernel ZIP from releases
2. Boot to recovery (TWRP/OrangeFox)
3. Flash the ZIP
4. Reboot
5. Install KernelSU Manager

### For Developers
```bash
# Clone repository
git clone https://github.com/Mryassinov/AnyKernel3-Splidder.git

# Copy kernel files
cp Image.gz dtb.img dtbo.img AnyKernel3-Splidder/

# Create ZIP
cd AnyKernel3-Splidder
zip -r9 kernel.zip * -x .git README.md .gitignore
```

## 🙏 Credits
- **AnyKernel3**: osm0sis @ XDA
- **Kernel Splidder**: Mryassinov
- **KernelSU-Next**: rsuntk

## 📜 License
BSD 3-Clause (see LICENSE)

---
**Made with ❤️ for Xiaomi SM6150 Community**