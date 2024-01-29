extends Node


#var moveCount : int

#var playerItems : Array

var found_object_names = {
   "Kitchen": [],
   "Bedroom": []
}

func add_found_object(roomName, objectName):
   found_object_names[roomName].append(objectName)
   
func get_found_objects(roomName):
   return found_object_names[roomName]
   
func is_object_found(roomName, objectName):
   return objectName in found_object_names[roomName]
   
