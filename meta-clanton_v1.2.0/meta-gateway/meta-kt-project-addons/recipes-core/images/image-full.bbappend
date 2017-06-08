ROOTFS_POSTPROCESS_COMMAND += "install_kt_files ;"

KT_ADDON_FILES_DIR:="${THISDIR}/files"

install_kt_files() {
    tar xvf ${KT_ADDON_FILES_DIR}/RMM_AgentService.tgz -C ${IMAGE_ROOTFS}/ --no-same-owner
    tar xvf ${KT_ADDON_FILES_DIR}/kt_files.tgz -C ${IMAGE_ROOTFS}/ --no-same-owner
    cp ${IMAGE_ROOTFS}/home/root/rndis-dhcp.network ${IMAGE_ROOTFS}/etc/systemd/network/
    rm ${IMAGE_ROOTFS}/etc/systemd/network/wired-dhcp.network
}
