(in-package :cl-wlroots/render/renderer)

(export '(renderer
	  renderer-autocreate
	  renderer-begin
	  renderer-end
	  renderer-clear
	  renderer-read-pixels-flags
	  renderer-init-wl-display))

(defcfun ("wlr_renderer_autocreate" renderer-autocreate) (:pointer (:struct renderer))
  ;; (egl (:pointer (:struct egl)))
  (platform egl:eglenum)
  (remote-display (:pointer :void))
  (config_attribs (:pointer egl:EGLint)))

(defcfun ("wlr_renderer_begin" renderer-begin) :void
  (renderer (:pointer (:struct renderer)))
  (width :int)
  (height :int))

(defcfun ("wlr_renderer_end" renderer-end) :void
  (renderer (:pointer (:struct renderer))))

(defcfun ("wlr_renderer_clear" renderer-clear) :void
  (renderer (:pointer (:struct renderer)))
  (color :pointer))

(defcfun ("wlr_renderer_init_wl_display" renderer-init-wl-display) :void
  (renderer (:pointer (:struct renderer)))
  (display :pointer))