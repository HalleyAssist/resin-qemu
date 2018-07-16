inherit kernel-resin

RESIN_CONFIGS_append = " gcp"

RESIN_CONFIGS[gcp] = " \
    CONFIG_KVM_GUEST=y \
    CONFIG_VIRTIO_PCI=y \
    CONFIG_SCSI_VIRTIO=y \
    CONFIG_VIRTIO_NET=y \
    CONFIG_PCI_MSI=y \
    "
RESIN_CONFIGS_append = " squashfs"

RESIN_CONFIGS[squashfs] = " \
    CONFIG_SQUASHFS=m \
    CONFIG_SQUASHFS_FILE_DIRECT=y \
    CONFIG_SQUASHFS_DECOMP_MULTI=y \
    CONFIG_SQUASHFS_XATTR=y \
    CONFIG_SQUASHFS_ZLIB=y \
    CONFIG_SQUASHFS_LZ4=y \
    CONFIG_SQUASHFS_XZ=y \
    CONFIG_SQUASHFS_ZSTD=y \
    CONFIG_SQUASHFS_4K_DEVBLK_SIZE=y \
    CONFIG_SQUASHFS_EMBEDDED=y \
    CONFIG_SQUASHFS_FRAGMENT_CACHE_SIZE=3 \
    "
