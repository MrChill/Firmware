include(configs/nuttx_px4fmu-v2_default)

set(PARAM_DEFAULT_OVERRIDES "{\\\"SYS_MC_EST_GROUP\\\": 1}")

list(REMOVE_ITEM config_module_list
	src/modules/ekf2
	)

list(APPEND config_module_list
	src/modules/attitude_estimator_q
	src/modules/local_position_estimator
	)
