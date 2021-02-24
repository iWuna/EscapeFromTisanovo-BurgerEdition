/obj/item/weapon/ranged/bullet/magazine/pistol/brown
	name = ".40 Brown"
	icon = 'icons/obj/item/weapons/ranged/pistol/40.dmi'
	desc_extended = "A decently powerful and accurate .40 semi-automatic pistol meant for self defense. Commonly used by mercenaries."
	value = 110
	shoot_sounds = list('sound/weapons/40/shoot_mod.ogg')
	shoot_delay = 1.25

	view_punch = 8

	automatic = FALSE

	size = SIZE_2


	heat_per_shot = 0.025
	heat_max = 0.10

	bullet_length_min = 21
	bullet_length_best = 22
	bullet_length_max = 23

	bullet_diameter_min = 9.8
	bullet_diameter_best = 10
	bullet_diameter_max = 11.2

	attachment_whitelist = list(
		/obj/item/attachment/barrel/charger = TRUE,
		/obj/item/attachment/barrel/charger/advanced = TRUE,
		/obj/item/attachment/barrel/compensator = TRUE,
		/obj/item/attachment/barrel/extended = TRUE,
		/obj/item/attachment/barrel/gyro = TRUE,
		/obj/item/attachment/barrel/laser_charger = FALSE,
		/obj/item/attachment/barrel/suppressor = TRUE,

		/obj/item/attachment/sight/laser_sight = FALSE,
		/obj/item/attachment/sight/quickfire_adapter = FALSE,
		/obj/item/attachment/sight/red_dot = FALSE,
		/obj/item/attachment/sight/scope = FALSE,
		/obj/item/attachment/sight/scope/large = FALSE,
		/obj/item/attachment/sight/targeting_computer = FALSE,

		/obj/item/attachment/stock/c20r = FALSE,

		/obj/item/attachment/undermount/angled_grip = FALSE,
		/obj/item/attachment/undermount/bipod = FALSE,
		/obj/item/attachment/undermount/burst_adapter = FALSE,
		/obj/item/attachment/undermount/vertical_grip = FALSE
	)

	attachment_barrel_offset_x = 29 - 16
	attachment_barrel_offset_y = 22 - 16

	attachment_sight_offset_x = 10 - 16
	attachment_sight_offset_y = 22 - 16

	attachment_undermount_offset_x = 25 - 16
	attachment_undermount_offset_y = 18 - 16

	firing_pin = /obj/item/firing_pin/electronic/iff/mercenary

/obj/item/weapon/ranged/bullet/magazine/pistol/brown/get_static_spread()
	return 0

/obj/item/weapon/ranged/bullet/magazine/pistol/brown/get_skill_spread(var/mob/living/L)
	return max(0,0.02 - (0.03 * L.get_skill_power(SKILL_RANGED)))

/obj/item/weapon/ranged/bullet/magazine/pistol/brown/equipped/Generate()

	. = ..()

	attachment_barrel = /obj/item/attachment/barrel/suppressor
	attachment_barrel = new attachment_barrel(src)

	update_attachment_stats()
	update_sprite()