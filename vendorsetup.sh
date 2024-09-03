# Make the build faster using ccache
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
ccache -o compression=true

# Disable and stop systemd-oomd service.
systemctl disable --now systemd-oomd
