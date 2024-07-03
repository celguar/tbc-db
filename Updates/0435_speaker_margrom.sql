DELETE FROM creature WHERE guid IN(99238,99239,99240,99241);
DELETE FROM creature_movement WHERE id IN(99238,99239,99240,99241);

INSERT INTO creature(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
('99238', '18693', '530', '1', '3723.5872', '5350.365', '-8.083933', '0.39053800702095030000', '43200', '86400', '0', '4'),
('99239', '18693', '530', '1', '3538.5786', '5789.5396', '1.4720769', '5.11863994598388700000', '43200', '86400', '0', '2'),
('99240', '18693', '530', '1', '2640.7002', '6525.545', '1.044459', '4.27041006088256800000', '43200', '86400', '0', '2'),
('99241', '18693', '530', '1', '1695.8086', '6272.6587', '2.3292212', '1.14059996604919430000', '43200', '86400', '0', '4');

SET @SGGUID := 23000; -- Blades Edge
DELETE FROM spawn_group WHERE Id = @SGGUID+1;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+1, 'Blades Edge Mountains - Speaker Mar''grom', 0, 1, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id = @SGGUID+1;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+1, 99238, -1),
(@SGGUID+1, 99239, -1),
(@SGGUID+1, 99240, -1),
(@SGGUID+1, 99241, -1);

SET @MOVID = 99238;

-- GUID: Full: 0x204CB0424012414000002D00001F584D Creature/0 R4908/S45 Map: 530 (Outland) Entry: 18693 (Speaker Mar'grom) Low: 2054221 PathType: None
INSERT INTO creature_movement (Id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(@MOVID + 0, '1', '3723.5872', '5350.365', '-8.083933', '100', '0', '0', NULL),
(@MOVID + 0, '2', '3701.5781', '5346.27', '-7.960764', '100', '0', '0', NULL),
(@MOVID + 0, '3', '3691.3325', '5330.9775', '-8.244202', '100', '0', '0', NULL),
(@MOVID + 0, '4', '3685.1904', '5312.998', '-9.119202', '100', '0', '0', NULL),
(@MOVID + 0, '5', '3656.4111', '5299.2285', '-17.40072', '100', '0', '0', NULL),
(@MOVID + 0, '6', '3607.609', '5303.4272', '-21.78869', '100', '0', '0', NULL),
(@MOVID + 0, '7', '3582.7334', '5267.2534', '-21.629337', '100', '0', '0', NULL),
(@MOVID + 0, '8', '3535.0667', '5253.311', '-24.420559', '100', '0', '0', NULL),
(@MOVID + 0, '9', '3499.8867', '5248.319', '-23.938574', '100', '0', '0', NULL),
(@MOVID + 0, '10', '3466.8196', '5246.4907', '-17.806005', '100', '0', '0', NULL),
(@MOVID + 0, '11', '3433.3887', '5235.2188', '-4.1372604', '100', '0', '0', NULL),
(@MOVID + 0, '12', '3433.5022', '5199.8164', '-5.632554', '100', '0', '0', NULL),
(@MOVID + 0, '13', '3433.3887', '5235.2188', '-4.1372604', '100', '0', '0', NULL),
(@MOVID + 0, '14', '3466.8196', '5246.4907', '-17.806005', '100', '0', '0', NULL),
(@MOVID + 0, '15', '3499.8867', '5248.319', '-23.938574', '100', '0', '0', NULL),
(@MOVID + 0, '16', '3535.0667', '5253.311', '-24.420559', '100', '0', '0', NULL),
(@MOVID + 0, '17', '3582.7334', '5267.2534', '-21.629337', '100', '0', '0', NULL);

SET @MOVID = 99239;
-- GUID: Full: 0x204CB0424012414000003100001AA84C Creature/0 R4908/S49 Map: 530 (Outland) Entry: 18693 (Speaker Mar'grom) Low: 1747020 PathType: None
INSERT INTO creature_movement (Id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(@MOVID + 0, '1', '3538.5786', '5789.5396', '1.4720769', '100', '0', '0', NULL),
(@MOVID + 0, '2', '3514.554', '5792.5483', '1.340013', '100', '0', '0', NULL),
(@MOVID + 0, '3', '3497.7747', '5805.2524', '1.2581613', '100', '0', '0', NULL),
(@MOVID + 0, '4', '3448.1377', '5803.541', '0.94495535', '100', '0', '0', NULL),
(@MOVID + 0, '5', '3420.3525', '5770.817', '-3.5440817', '100', '0', '0', NULL),
(@MOVID + 0, '6', '3391.9504', '5745.35', '-9.83434', '100', '0', '0', NULL),
(@MOVID + 0, '7', '3351.3252', '5726.434', '-10.185414', '100', '0', '0', NULL),
(@MOVID + 0, '8', '3319.636', '5713.229', '-4.1542845', '100', '0', '0', NULL),
(@MOVID + 0, '9', '3274.7224', '5718.8545', '-5.397603', '100', '0', '0', NULL),
(@MOVID + 0, '10', '3237.3694', '5705.889', '-4.863345', '100', '0', '0', NULL),
(@MOVID + 0, '11', '3208.5833', '5699.604', '-0.42631102', '100', '0', '0', NULL),
(@MOVID + 0, '12', '3189.9329', '5717.866', '-2.3179479', '100', '0', '0', NULL),
(@MOVID + 0, '13', '3195.677', '5747.682', '-6.1602955', '100', '0', '0', NULL),
(@MOVID + 0, '14', '3166.4722', '5784.0396', '-8.273602', '100', '0', '0', NULL),
(@MOVID + 0, '15', '3145.789', '5791.5303', '-4.570965', '100', '0', '0', NULL),
(@MOVID + 0, '16', '3131.1667', '5807.4297', '-0.17549229', '100', '0', '0', NULL),
(@MOVID + 0, '17', '3108.419', '5812.9385', '-0.3859415', '100', '0', '0', NULL),
(@MOVID + 0, '18', '3095.7673', '5823.1953', '-0.65163463', '100', '0', '0', NULL),
(@MOVID + 0, '19', '3093.0095', '5839.1836', '-0.5196507', '100', '0', '0', NULL),
(@MOVID + 0, '20', '3095.7673', '5823.1953', '-0.65163463', '100', '0', '0', NULL),
(@MOVID + 0, '21', '3108.419', '5812.9385', '-0.3859415', '100', '0', '0', NULL),
(@MOVID + 0, '22', '3131.1667', '5807.4297', '-0.17549229', '100', '0', '0', NULL),
(@MOVID + 0, '23', '3145.789', '5791.5303', '-4.570965', '100', '0', '0', NULL),
(@MOVID + 0, '24', '3166.4722', '5784.0396', '-8.273602', '100', '0', '0', NULL),
(@MOVID + 0, '25', '3195.677', '5747.682', '-6.1602955', '100', '0', '0', NULL),
(@MOVID + 0, '26', '3189.9329', '5717.866', '-2.3179479', '100', '0', '0', NULL),
(@MOVID + 0, '27', '3208.5833', '5699.604', '-0.42631102', '100', '0', '0', NULL);

SET @MOVID = 99240;
-- GUID: Full: 0x204CB042401241400000310000157D87 Creature/0 R4908/S49 Map: 530 (Outland) Entry: 18693 (Speaker Mar'grom) Low: 1408391 PathType: None
INSERT INTO creature_movement (Id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(@MOVID + 0, '1', '2640.7002', '6525.545', '1.044459', '100', '0', '0', NULL),
(@MOVID + 0, '2', '2606.2336', '6539.1953', '0.8508539', '100', '0', '0', NULL),
(@MOVID + 0, '3', '2575.0576', '6556.5576', '0.8508539', '100', '0', '0', NULL),
(@MOVID + 0, '4', '2561.862', '6578.675', '3.431281', '100', '0', '0', NULL),
(@MOVID + 0, '5', '2571.8481', '6608.362', '7.4755783', '100', '0', '0', NULL),
(@MOVID + 0, '6', '2599.552', '6615.808', '12.926872', '100', '0', '0', NULL),
(@MOVID + 0, '7', '2636.2627', '6611.328', '19.058466', '100', '0', '0', NULL),
(@MOVID + 0, '8', '2667.7512', '6594.962', '21.574726', '100', '0', '0', NULL),
(@MOVID + 0, '9', '2679.6975', '6623.269', '25.171991', '100', '0', '0', NULL),
(@MOVID + 0, '10', '2671.0461', '6647.6313', '21.671991', '100', '0', '0', NULL),
(@MOVID + 0, '11', '2642.089', '6624.727', '20.284784', '100', '0', '0', NULL),
(@MOVID + 0, '12', '2614.9783', '6630.077', '17.504002', '100', '0', '0', NULL),
(@MOVID + 0, '13', '2584.5571', '6627.8325', '14.673576', '100', '0', '0', NULL),
(@MOVID + 0, '14', '2553.1382', '6605.868', '3.5380726', '100', '0', '0', NULL),
(@MOVID + 0, '15', '2521.776', '6578.681', '0.051968336', '100', '0', '0', NULL),
(@MOVID + 0, '16', '2479.9097', '6583.1494', '0.4352771', '100', '0', '0', NULL),
(@MOVID + 0, '17', '2457.8064', '6588.9287', '0.85085595', '100', '0', '0', NULL),
(@MOVID + 0, '18', '2427.6228', '6615.962', '1.3009889', '100', '0', '0', NULL),
(@MOVID + 0, '19', '2402.4463', '6638.7446', '3.603893', '100', '0', '0', NULL),
(@MOVID + 0, '20', '2384.3752', '6677.112', '13.061168', '100', '0', '0', NULL),
(@MOVID + 0, '21', '2371.0254', '6717.061', '15.936118', '100', '0', '0', NULL),
(@MOVID + 0, '22', '2339.3884', '6706.2896', '15.936116', '100', '0', '0', NULL),
(@MOVID + 0, '23', '2352.2612', '6660.6426', '15.916275', '100', '0', '0', NULL),
(@MOVID + 0, '24', '2389.668', '6654.037', '7.7670026', '100', '0', '0', NULL),
(@MOVID + 0, '25', '2421.448', '6619.8813', '1.7919557', '100', '0', '0', NULL),
(@MOVID + 0, '26', '2454.6575', '6583.534', '0.85085595', '100', '0', '0', NULL),
(@MOVID + 0, '27', '2414.9583', '6577.8022', '1.225856', '100', '0', '0', NULL),
(@MOVID + 0, '28', '2367.4277', '6571.397', '0.85085607', '100', '0', '0', NULL),
(@MOVID + 0, '29', '2390.6128', '6559.08', '3.4758558', '100', '0', '0', NULL),
(@MOVID + 0, '30', '2384.7764', '6513.2056', '3.478904', '100', '0', '0', NULL),
(@MOVID + 0, '31', '2390.6128', '6559.08', '3.4758558', '100', '0', '0', NULL),
(@MOVID + 0, '32', '2367.4277', '6571.397', '0.85085607', '100', '0', '0', NULL),
(@MOVID + 0, '33', '2414.9583', '6577.8022', '1.225856', '100', '0', '0', NULL),
(@MOVID + 0, '34', '2454.6575', '6583.534', '0.85085595', '100', '0', '0', NULL),
(@MOVID + 0, '35', '2421.448', '6619.8813', '1.7919557', '100', '0', '0', NULL),
(@MOVID + 0, '36', '2389.6868', '6654.022', '7.9122663', '100', '0', '0', NULL),
(@MOVID + 0, '37', '2352.2612', '6660.6426', '15.916275', '100', '0', '0', NULL),
(@MOVID + 0, '38', '2339.3884', '6706.2896', '15.936116', '100', '0', '0', NULL),
(@MOVID + 0, '39', '2371.0254', '6717.061', '15.936118', '100', '0', '0', NULL),
(@MOVID + 0, '40', '2384.3752', '6677.112', '13.061168', '100', '0', '0', NULL),
(@MOVID + 0, '41', '2402.4463', '6638.7446', '3.603893', '100', '0', '0', NULL),
(@MOVID + 0, '42', '2427.6228', '6615.962', '1.3009889', '100', '0', '0', NULL),
(@MOVID + 0, '43', '2457.8064', '6588.9287', '0.85085595', '100', '0', '0', NULL),
(@MOVID + 0, '44', '2479.9097', '6583.1494', '0.4352771', '100', '0', '0', NULL),
(@MOVID + 0, '45', '2521.776', '6578.681', '0.051968336', '100', '0', '0', NULL),
(@MOVID + 0, '46', '2553.1382', '6605.868', '3.5380726', '100', '0', '0', NULL),
(@MOVID + 0, '47', '2584.5571', '6627.8325', '14.673576', '100', '0', '0', NULL),
(@MOVID + 0, '48', '2614.9783', '6630.077', '17.504002', '100', '0', '0', NULL),
(@MOVID + 0, '49', '2642.089', '6624.727', '20.284784', '100', '0', '0', NULL),
(@MOVID + 0, '50', '2671.0461', '6647.6313', '21.671991', '100', '0', '0', NULL),
(@MOVID + 0, '51', '2679.6975', '6623.269', '25.171991', '100', '0', '0', NULL),
(@MOVID + 0, '52', '2667.7512', '6594.962', '21.574726', '100', '0', '0', NULL),
(@MOVID + 0, '53', '2636.374', '6611.321', '19.117182', '100', '0', '0', NULL),
(@MOVID + 0, '54', '2599.663', '6615.801', '13.034538', '100', '0', '0', NULL),
(@MOVID + 0, '55', '2571.8481', '6608.362', '7.4755783', '100', '0', '0', NULL),
(@MOVID + 0, '56', '2561.862', '6578.675', '3.431281', '100', '0', '0', NULL),
(@MOVID + 0, '57', '2575.0576', '6556.5576', '0.8508539', '100', '0', '0', NULL),
(@MOVID + 0, '58', '2606.2336', '6539.1953', '0.8508539', '100', '0', '0', NULL),
(@MOVID + 0, '59', '2640.7002', '6525.545', '1.044459', '100', '0', '0', NULL),
(@MOVID + 0, '60', '2655.9429', '6498.061', '3.4773912', '100', '0', '0', NULL);

SET @MOVID = 99241;
-- GUID: Full: 0x204CB04240124140000031000017EBF8 Creature/0 R4908/S49 Map: 530 (Outland) Entry: 18693 (Speaker Mar'grom) Low: 1567736 PathType: None
INSERT INTO creature_movement (Id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(@MOVID + 0, '1', '1695.8086', '6272.6587', '2.3292212', '100', '0', '0', NULL),
(@MOVID + 0, '2', '1668.3463', '6305.5947', '-0.59371066', '100', '0', '0', NULL),
(@MOVID + 0, '3', '1634.6749', '6312.1304', '0.6388191', '100', '0', '0', NULL),
(@MOVID + 0, '4', '1600.1001', '6320.393', '1.1378616', '100', '0', '0', NULL),
(@MOVID + 0, '5', '1566.361', '6323.3813', '1.2560031', '100', '0', '0', NULL),
(@MOVID + 0, '6', '1528.7394', '6351.5195', '1.1113111', '100', '0', '0', NULL),
(@MOVID + 0, '7', '1566.707', '6328.472', '1.2727726', '100', '0', '0', NULL),
(@MOVID + 0, '8', '1600.1467', '6330.4155', '0.6851028', '100', '0', '0', NULL),
(@MOVID + 0, '9', '1633.6152', '6364.8223', '-5.184167', '100', '0', '0', NULL),
(@MOVID + 0, '10', '1638.2952', '6398.6587', '-10.213765', '100', '0', '0', NULL),
(@MOVID + 0, '11', '1600.5067', '6430.834', '-10.295484', '100', '0', '0', NULL),
(@MOVID + 0, '12', '1567.1755', '6459.7837', '-11.671899', '100', '0', '0', NULL),
(@MOVID + 0, '13', '1533.8083', '6475.7446', '-10.33901', '100', '0', '0', NULL),
(@MOVID + 0, '14', '1499.9536', '6486.67', '-10.21387', '100', '0', '0', NULL),
(@MOVID + 0, '15', '1471.8346', '6505.765', '-10.213872', '100', '0', '0', NULL),
(@MOVID + 0, '16', '1463.6788', '6533.928', '-10.213872', '100', '0', '0', NULL),
(@MOVID + 0, '17', '1433.7994', '6549.3003', '-8.084355', '100', '0', '0', NULL),
(@MOVID + 0, '18', '1463.6788', '6533.928', '-10.213872', '100', '0', '0', NULL);

-- Remove old pooling
DELETE FROM pool_creature_template WHERE id = 18693;
DELETE FROM pool_template WHERE entry = 1176;