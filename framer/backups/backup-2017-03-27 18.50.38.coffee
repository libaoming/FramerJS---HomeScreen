# Import file "android homescreen" (sizes and positions are scaled 1:3)

layout = Framer.Importer.load("imported/android homescreen@3x")

# fade all elements
layout.statusbar.opacity = 0
layout.clock.opacity = 0
layout.bg_photo.opacity = 0
layout.bottom_icons.opacity = 0
layout.john.opacity = 0
layout.mike.opacity = 0
layout.ralph.opacity = 0
layout.ellie.opacity = 0
layout.ellie.scale = 0
layout.ellie.y = 1500
layout.message_john.opacity = 0
layout.message_mike.opacity = 0
layout.message_ellie.opacity = 0
layout.message_ralph.opacity = 0

# turn android on
layout.statusbar.animate
	opacity: 1
	options:
		delay: 1
layout.clock.animate
	opacity: 1
	options:
		delay: 1
layout.bg_photo.animate
	opacity: 1
	options:
		delay: 0.6
layout.bottom_icons.animate
	opacity: 1
	options:
		delay: 1

# ellie notification
layout.ellie.animate
	opacity: 1
	scale: 1
	options:
		delay: 4
		time: 0.5
		curve: "spring(196, 14, 2)"

layout.john.animate
	opacity: 0.05
	x: 106
	options:
		delay: 4
		curve: "ease"
		time: 0.7

layout.mike.animate
	opacity: 0.05
	x: 310
	options:
		delay: 4
		curve: "ease"
		time: 0.7

layout.ralph.animate
	opacity: 0.05
	x: 518
	options:
		delay: 4
		curve: "ease"
		time: 0.7

layout.clock.animate
	y: 300
	options: 
		delay: 4
		time: 0.6

layout.message_ellie.animate
	opacity: 1
	options:
		delay: 4

# Chat icons showing up
layout.bottom_icons.onAnimationEnd ->
	layout.john.animate
		opacity: 1
		y: 1500
		options:
			curve: "spring(187, 16, 0)"
	layout.mike.animate
		opacity: 1
		y: 1500
		options:
			curve: "spring(187, 16, 0)"
			delay: 0.1
	layout.ralph.animate
		opacity: 1
		y: 1500
		options:
			curve: "spring(187, 16, 0)"
			delay: 0.25

# chat states
layout.john.states =
	off:
		opacity: 0.05
		animationOptions:
			time: 0.2
	on:
		opacity: 1
		animationOptions:
			time: 0.2

layout.mike.states =
	off:
		opacity: 0.05
		animationOptions:
			time: 0.2
	on:
		opacity: 1
		animationOptions:
			time: 0.2

layout.ralph.states =
	off:
		opacity: 0.05
		animationOptions:
			time: 0.2
	on:
		opacity: 1
		animationOptions:
			time: 0.2

layout.ellie.states =
	off:
		opacity: 0.05
		animationOptions:
			time: 0.2
	on:
		opacity: 1
		animationOptions:
			time: 0.2

layout.john.onTap ->
	layout.john.animate("on")
	layout.mike.animate("off")
	layout.ralph.animate("off")
	layout.ellie.animate("off")
	layout.message_john.animate
		opacity: 1
	layout.message_ellie.animate
		opacity: 0
		options: 
			time: 0.3
	layout.message_ralph.animate
		opacity: 0
		options: 
			time: 0.3
	layout.message_mike.animate
		opacity: 0
		options: 
			time: 0.3

layout.mike.onTap ->
	layout.john.animate("off")
	layout.mike.animate("on")
	layout.ralph.animate("off")
	layout.ellie.animate("off")
	layout.message_mike.animate
		opacity: 1
	layout.message_john.animate
		opacity: 0
		options: 
			time: 0.3
	layout.message_ellie.animate
		opacity: 0
		options: 
			time: 0.3
	layout.message_ralph.animate
		opacity: 0
		options: 
			time: 0.3

layout.ralph.onTap ->
	layout.john.animate("off")
	layout.mike.animate("off")
	layout.ralph.animate("on")
	layout.ellie.animate("off")
	layout.message_ralph.animate
		opacity: 1
	layout.message_ellie.animate
		opacity: 0
		options: 
			time: 0.3
	layout.message_john.animate
		opacity: 0
		options: 
			time: 0.3
	layout.message_mike.animate
		opacity: 0
		options: 
			time: 0.3

layout.ellie.onTap ->
	layout.john.animate("off")
	layout.mike.animate("off")
	layout.ralph.animate("off")
	layout.ellie.animate("on")
	layout.message_ellie.animate
		opacity: 1
	layout.message_john.animate
		opacity: 0
		options: 
			time: 0.3
	layout.message_mike.animate
		opacity: 0
		options: 
			time: 0.3
	layout.message_ralph.animate
		opacity: 0
		options: 
			time: 0.3
