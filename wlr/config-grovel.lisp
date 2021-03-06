(in-package #:wlr/config)
(pkg-config-cflags "wlroots")
(include "wlr/config.h")

(feature :wlr-libcap "WLR_HAS_LIBCAP")
(feature :wlr-systemd "WLR_HAS_SYSTEMD")
(feature :wlr-elogind "WLR_HAS_ELOGIND")

(feature :wlr-x11-backend "WLR_HAS_X11_BACKEND")

(feature :wlr-xwayland "WLR_HAS_XWAYLAND")

(feature :wlr-xcb-errors "WLR_HAS_XCB_ERRORS")
(feature :wlr-xcb-icccm "WLR_HAS_XCB_ICCCM")
(feature :wlr-xbc-xkb "WLR_HAS_XCB_XKB")

;; don't know if this one is really needed:
(feature :wlr-posix-fallocate "WLR_HAS_POSIX_FALLOCATE")
