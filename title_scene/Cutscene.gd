extends Control

signal finished

@onready var video_stream_player: VideoStreamPlayer = $VideoStreamPlayer

func _ready() -> void:
	video_stream_player.connect("finished", _on_video_finished)
	video_stream_player.play()

func _on_video_finished() -> void:
	finished.emit()
