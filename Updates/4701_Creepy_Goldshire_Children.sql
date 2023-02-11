-- Game Event - DayTime 7AM to 7PM
DELETE FROM game_event WHERE entry IN (400);
INSERT INTO game_event(entry, schedule_type, occurence, length, holiday, linkedTo, EventGroup, description) VALUES
('400', '1', '1440', '780', '0', '0', '0', 'DayTime 7AM to 8PM');
DELETE FROM game_event_time WHERE entry IN (400);
INSERT INTO game_event_time VALUES
('400', '2006-01-01 07:00:00', '2035-12-30 20:00:00');

-- Creepy Goldshire Children - RP
DELETE FROM `spawn_group` WHERE id = 19989;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19989, 'Elwynn Forest - Goldshire - Creepy Goldshire Children - Day RP', 0, 0, 9108, 10);
DELETE FROM `spawn_group_spawn` WHERE id = 19989;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19989, 79638, 0), -- Cameron 805
(19989, 79640, 1), -- Dana 804
(19989, 79639, 2), -- John 806
(19989, 79642, 3), -- Lisa 807
(19989, 79643, 4), -- Aaron 810
(19989, 79641, 5); -- Jose 811
DELETE FROM conditions WHERE condition_entry IN (9108);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(9108, 12, 400, 0, 0, 0, '');
DELETE FROM worldstate_name WHERE Id=19989;
INSERT INTO worldstate_name(Id, Name) VALUES
(19989,'Elwynn Forest - Goldshire - Creepy Goldshire Children - Day RP');
DELETE FROM `spawn_group_formation` WHERE id = 19989;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19989, 6, 3, 0, 19989, 2, 'Elwynn Forest - Goldshire - Creepy Goldshire Children - Day RP');
DELETE FROM `waypoint_path_name` WHERE PathId = 19989;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19989,'Elwynn Forest - Goldshire - Creepy Goldshire Children - Day RP');
DELETE FROM `waypoint_path` WHERE PathId = 19989;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19989,1,-9373.37,-67.39773,69.30243,1.132,1,5), -- run
(19989,2,-9377.875,-73.22725,69.354004,100,0,0),
(19989,3,-9391.488,-68.817276,64.554,100,0,0),
(19989,4,-9378.353,-73.96658,64.554,100,0,0),
(19989,5,-9382.974,-85.49686,63.383343,100,0,0),
(19989,6,-9382.579,-87.70762,63.156467,100,0,0),
(19989,7,-9366.21,-85.62522,64.76185,100,0,0),
(19989,8,-9357.185,-67.39594,65.16541,100,0,0),
(19989,9,-9356.755,-61.79861,65.742424,100,0,0),
(19989,10,-9360.976,-37.160915,64.21215,100,0,0),
(19989,11,-9370.325,-22.43674,62.946873,100,0,0),
(19989,12,-9381.537,-12.674588,61.6832,100,0,0),
(19989,13,-9395.342,6.56977,60.04029,100,0,0),
(19989,14,-9406.107,18.350368,59.16476,100,0,0),
(19989,15,-9426.806,43.66276,56.862225,100,0,0),
(19989,16,-9433.7705,53.66634,56.529762,100,0,0),
(19989,17,-9436.617,67.866646,56.289536,100,0,0),
(19989,18,-9409.633,91.42285,57.73928,100,0,0),
(19989,19,-9389.415,101.89811,59.341656,100,0,0),
(19989,20,-9370.749,108.16439,60.884136,100,0,0),
(19989,21,-9356.564,113.7526,61.868546,100,0,0),
(19989,22,-9344.033,120.36567,63.225235,100,0,0),
(19989,23,-9334.78,125.593544,63.675842,100,0,0),
(19989,24,-9301.82,140.58723,65.81363,100,0,0),
(19989,25,-9288.052,146.25087,66.50413,100,0,0),
(19989,26,-9269.0205,153.88118,67.15891,100,0,0),
(19989,27,-9246.3,169.94423,67.97204,100,0,0),
(19989,28,-9235.545,182.45357,67.72204,100,0,0),
(19989,29,-9216.215,204.92627,69.299286,100,0,0),
(19989,30,-9205.582,215.13618,70.90402,100,0,0),
(19989,31,-9194.908,227.0344,71.7613,100,0,0),
(19989,32,-9185.974,246.03679,73.060974,100,0,0),
(19989,33,-9182.692,261.2219,73.992615,100,0,0),
(19989,34,-9182.33,276.81528,75.567116,100,0,0),
(19989,35,-9181.041,291.75586,77.192116,100,0,0),
(19989,36,-9180.45,307.79562,78.88758,100,0,0),
(19989,37,-9177.857,328.76764,81.883675,100,0,0),
(19989,38,-9171.857,341.22873,84.69305,100,0,0),
(19989,39,-9161.832,353.77112,88.11096,100,0,0),
(19989,40,-9148.504,368.17947,90.37428,100,0,0),
(19989,41,-9130.094,386.393,90.95971,100,0,0),
(19989,42,-9108.195,403.39243,92.58039,100,0,0),
(19989,43,-9088.374,418.5025,92.294464,100,0,0),
(19989,44,-9075.827,427.4514,93.14868,100,0,0),
(19989,45,-9053.727,442.98785,93.198494,100,0,0),
(19989,46,-9040.674,453.69608,93.205246,100,5000,80501), -- 865000+5000waitin = 14min30sec random walk (sniff)
(19989,47,-9057.086,442.696,93.18139,100,0,0),
(19989,48,-9077.522,426.62787,93.153946,100,0,0),
(19989,49,-9110.189,398.61057,92.57897,100,0,0),
(19989,50,-9138.066,378.12982,90.630264,100,0,0),
(19989,51,-9152.1455,363.16147,90.25818,100,0,0),
(19989,52,-9173.075,337.30203,84.011284,100,0,0),
(19989,53,-9178.806,321.11084,80.430916,100,0,0),
(19989,54,-9180.204,299.4938,78.25669,100,0,0),
(19989,55,-9180.491,279.27805,75.817116,100,0,0),
(19989,56,-9180.696,267.07095,74.82078,100,0,0),
(19989,57,-9182.921,256.2004,73.853455,100,0,0),
(19989,58,-9191.109,233.48384,71.85785,100,0,0),
(19989,59,-9204.436,215.27718,70.90402,100,0,0),
(19989,60,-9224.592,196.02887,68.59704,100,0,0),
(19989,61,-9241.471,176.67427,67.84704,100,0,0),
(19989,62,-9250.337,162.5332,68.06643,100,0,0),
(19989,63,-9267.557,155.38672,67.25413,100,0,0),
(19989,64,-9289.775,148.40625,66.50413,100,0,0),
(19989,65,-9303.623,143.18729,65.81363,100,0,0),
(19989,66,-9325.261,131.86653,64.2052,100,0,0),
(19989,67,-9358.191,113.54916,61.73683,100,0,0),
(19989,68,-9376.851,106.61002,60.509136,100,0,0),
(19989,69,-9396.042,100.60297,58.894024,100,0,0),
(19989,70,-9405.717,95.63086,58.33767,100,0,0),
(19989,71,-9414.219,88.94662,57.39187,100,0,0),
(19989,72,-9424.384,81.17665,56.72805,100,0,0),
(19989,73,-9435.112,73.283966,56.12108,100,0,0),
(19989,74,-9448.633,67.34017,56.26439,100,0,0),
(19989,75,-9460.035,63.37641,55.894997,100,5000,80501), -- 865000+5000waitin = 14min30sec random walk (sniff)
(19989,76,-9434.759,49.807728,56.480446,100,0,0),
(19989,77,-9423.32,36.638996,57.318523,100,0,0),
(19989,78,-9409.554,21.247179,58.81686,100,0,0),
(19989,79,-9389.474,-2.945313,60.946873,100,0,0),
(19989,80,-9375.284,-17.20996,62.571873,100,0,0),
(19989,81,-9360.87,-31.551216,63.903328,100,0,0),
(19989,82,-9338.673,-49.523003,65.56542,100,0,0),
(19989,83,-9324.763,-55.584095,66.38094,100,0,0),
(19989,84,-9306.794,-57.02702,66.88094,100,0,0),
(19989,85,-9297.971,-60.041992,67.275276,100,0,0),
(19989,86,-9276.301,-73.37381,68.34315,100,0,0),
(19989,87,-9261.412,-84.93544,69.28147,100,0,0),
(19989,88,-9241.839,-97.64898,70.72019,100,0,0),
(19989,89,-9228.749,-103.29351,71.171135,100,0,0),
(19989,90,-9203.286,-110.7232,71.15478,100,0,0),
(19989,91,-9203.286,-110.7232,71.15478,100,0,0),
(19989,92,-9189.449,-112.10536,70.98043,100,0,0),
(19989,93,-9174.449,-112.36914,71.49557,100,0,0),
(19989,94,-9164.22,-118.54861,72.96311,100,0,0),
(19989,95,-9161.045,-123.634766,73.46311,100,0,0),
(19989,96,-9155.88,-137.64659,74.73592,100,5000,80502), -- 595000+5000waitin = 10min random walk (sniff)
(19989,97,-9155.88,-137.64659,74.73592,100,1,6), -- run off
(19989,98,-9161.045,-123.634766,73.46311,100,0,0),
(19989,99,-9164.22,-118.54861,72.96311,100,0,0),
(19989,100,-9174.449,-112.36914,71.49557,100,0,0),
(19989,101,-9189.449,-112.10536,70.98043,100,0,0),
(19989,102,-9203.286,-110.7232,71.15478,100,0,0),
(19989,103,-9203.286,-110.7232,71.15478,100,0,0),
(19989,104,-9228.749,-103.29351,71.171135,100,0,0),
(19989,105,-9241.839,-97.64898,70.72019,100,0,0),
(19989,106,-9256.664,-87.03299,69.72117,100,0,0),
(19989,107,-9267.177,-79.42491,68.8119,100,0,0),
(19989,108,-9277.366,-71.8393,68.34046,100,0,0),
(19989,109,-9286.165,-66.13303,67.96937,100,0,0),
(19989,110,-9296.459,-61.594074,67.34437,100,0,0),
(19989,111,-9306.293,-58.823242,66.87704,100,0,0),
(19989,112,-9314.733,-57.39876,66.67562,100,0,0),
(19989,113,-9323.23,-56.791992,66.383385,100,0,0),
(19989,114,-9337.33,-53.73687,65.81542,100,0,0),
(19989,115,-9346.514,-51.05241,65.50414,100,0,0),
(19989,116,-9351.099,-55.512154,66.138176,100,0,0),
(19989,117,-9354.014,-59.54134,66.68456,100,0,0),
(19989,118,-9360.522,-71.64507,64.1493,100,0,0),
(19989,119,-9364.956,-76.847115,63.814583,100,0,0),
(19989,120,-9367.695,-82.17133,64.06743,100,0,0),
(19989,121,-9370.42,-87.182076,64.34184,100,0,0),
(19989,122,-9376.152,-88.9349,63.9705,100,0,0),
(19989,123,-9381.66,-85.98535,63.343548,100,0,0),
(19989,124,-9381.834,-82.057724,64.277824,100,0,0),
(19989,125,-9380.58,-78.66265,64.554,100,0,0),
(19989,126,-9389.02,-69.78505,64.554,100,0,0),
(19989,127,-9391.263,-69.06988,64.554,100,0,0),
(19989,128,-9391.125,-72.55312,65.25861,100,0,0),
(19989,129,-9386.0205,-75.60428,69.2645,100,0,0),
(19989,130,-9382.524,-76.90538,69.35401,100,0,0),
(19989,131,-9378.614,-74.08203,69.354,100,0,0),
(19989,132,-9375.098,-69.84104,69.354004,100,0,0),
(19989,133,-9372.997,-66.33648,69.354004,100,0,0),
(19989,134,-9373.5205,-67.71767,69.354004,1.117,1000,80503);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (80501,80502,80503);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(80501,0,20,1,3,865000,0,0,12,0,0,0,0,0,0,0,0,'Change Movement To 1 - Random (865secs TEMP) (around current location)'),
(80502,0,20,1,3,595000,0,0,12,0,0,0,0,0,0,0,0,'Change Movement To 1 - Random (595secs TEMP) (around current location)'),
(80503,1,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(80503,10,51,151,19989,0,0,0,0,0,0,0,0,0,0,0,0,'disband formation'),
(80503,100,3,0,0,0,804,50,7,0,0,0,0,-9377.477,-67.8297,69.354004,0.29670596122741699,'Dana 804 - move'),
(80503,101,3,0,0,0,806,50,7,0,0,0,0,-9375.019,-62.765915,69.354004,5.201081275939941406,'John 806 - move'),
(80503,101,3,0,0,0,807,50,7,0,0,0,0,-9371.019,-71.20387,69.354004,1.93731546401977539,'Lisa 807 - move'),
(80503,101,3,0,0,0,810,50,7,0,0,0,0,-9372.405,-65.68452,69.354,4.206243515014648437,'Aaron 810 - move'),
(80503,101,3,0,0,0,811,50,7,0,0,0,0,-9368.688,-66.58949,69.354004,3.141592741012573242,'Jose 811 - move');
-- Kids spawn loc corrected + make them active
UPDATE creature SET position_x = -9373.37, position_y = -67.39773, position_z = 69.30243, orientation = 1.132178544998168945, spawndist = 0, MovementType = 0 WHERE id IN (804,805,806,807,810,811);
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096 WHERE entry IN (804,805,806,807,810,811);