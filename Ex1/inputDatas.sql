/*2,3. Nhập dữ liệu vào bảng */
INSERT INTO `studentmanagement`.`students` (`RN`, `Name`, `Gender`) VALUES ('1', 'Mỹ Linh', 0);
INSERT INTO `studentmanagement`.`students` (`RN`, `Name`, `Gender`) VALUES ('2', 'Đàm Vĩnh Hưng', 1);
INSERT INTO `studentmanagement`.`students` (`RN`, `Name`, `Gender`) VALUES ('3', 'Kim Tử Long', 1);
INSERT INTO `studentmanagement`.`students` (`RN`, `Name`, `Gender`) VALUES ('4', 'Tài Linh', 1);
INSERT INTO `studentmanagement`.`students` (`RN`, `Name`, `Gender`) VALUES ('5', 'Mỹ Lệ', 0);
INSERT INTO `studentmanagement`.`students` (`RN`, `Name`) VALUES ('6', 'Ngọc Oanh' );

INSERT INTO `studentmanagement`.`subject` (`sID`, `sName`) VALUES ('1', 'SQL');
INSERT INTO `studentmanagement`.`subject` (`sID`, `sName`) VALUES ('2', 'LGC');
INSERT INTO `studentmanagement`.`subject` (`sID`, `sName`) VALUES ('3', 'HTML');
INSERT INTO `studentmanagement`.`subject` (`sID`, `sName`) VALUES ('4', 'CF');

INSERT INTO `studentmanagement`.`studentsubject` (`RN`, `sID`, `Mark`, `Date`) VALUES ('1', '1', '9', '2005-07-28');
INSERT INTO `studentmanagement`.`studentsubject` (`RN`, `sID`, `Mark`, `Date`) VALUES ('2', '2', '3', '2005-07-29');
INSERT INTO `studentmanagement`.`studentsubject` (`RN`, `sID`, `Mark`, `Date`) VALUES ('3', '3', '9', '2005-07-31');
INSERT INTO `studentmanagement`.`studentsubject` (`RN`, `sID`, `Mark`, `Date`) VALUES ('1', '4', '5', '2005-07-30');
INSERT INTO `studentmanagement`.`studentsubject` (`RN`, `sID`, `Mark`, `Date`) VALUES ('4', '5', '10', '2005-07-19');
INSERT INTO `studentmanagement`.`studentsubject` (`RN`, `sID`, `Mark`, `Date`) VALUES ('1', '6', '9', '2005-07-25');

