SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `student_list` (
  `ID` int(255) NOT NULL,
  `roll` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gpa` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table `student_list`

INSERT INTO `student_list` (`ID`, `roll`, `name`, `gpa`) VALUES
(1, 190617, 'SHAHANUR RAHMAN', 3.55),
(2, 190610, 'SHA ALAM', 3.5),
(3, 190611, 'MEHEDI HASAN', 3.25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

