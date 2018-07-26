FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

DEPENDS += "dtc-native"
DEPENDS_remove = "dtc-145-native"

RDEPENDS_${PN}_append_sota = " u-boot-ostree-scr"

SRC_URI_append += " \
    file://0001-colibri_imx7-run-distro_bootcmd-by-default.patch \
    file://0001-colibri_imx7-prefer-non-secure-mode-by-default.patch \
    file://0001-libfdt-remove-leading-underscore-from-identifiers.patch \
    file://0001-colibri_imx7_emmc-use-distro-boot-for-internal-eMMC-.patch \
"
