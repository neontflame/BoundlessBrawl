if (layer_instance_get_instance(event_data[?"element_id"]) == id) {
   switch (event_data[?"message"]) {
      case "sonic_instashield_hitbox": {
			switch (image_index) {
				case 0:	{
					make_hitbox(self, self, 20, 26, (-40 - 8), 3, 45, 3, 1, 2, 4);
					break;
				}
				case 1: {
					make_hitbox(self, self, 20, 26, (-40 + 8), 3, 135, 3, 1, 2, 4);
					break;
				}
				case 2: {
					make_hitbox(self, self, 20, -26, (-40 + 8), 3, 225, 3, 1, 2, 4);
					break;
				}
				case 3: {
					make_hitbox(self, self, 20, -26, (-40 - 8), 3, 315, 3, 1, 2, 4);
					break;
				}
			}
			break;
		}
      case "sonic_eagle_hitbox": {
			make_hitbox(self, self, 20, 87 - 45, 94 - 90, 10, 135, 8, 1, 4, 5);
			make_hitbox(self, self, 10, 96 - 45, 69 - 90, 3, 180, 5, 1, 4, 5); 
			break;
		}
   }
}