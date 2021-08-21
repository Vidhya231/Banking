SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";





--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `sender` varchar(30) NOT NULL,
  `receiver` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL,
  `status` varchar(30) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



-- Table structure for table `users`--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Wes Anderson', 'wesanderson@gmail.com', 40000),
(2, 'Quentin Tarantino', 'quentintt@gmail.com', 80000),
(3, 'Christopher Nolan', 'chrisnolan@gmail.com', 60000),
(4, 'James Cameron', 'jamesc@gmail.com', 50000),
(5, 'David Fincher', 'davidfincher@gmail.com', 40000),
(6, 'Martin Scorsese', 'martin@gmail.com', 60000),
(7, 'Alfred', 'alfred@gmail.com', 50000),
(8, 'Stanley Kubrick', 'stanley@gmail.com', 40000),
(9, 'Ridley Scott', 'ridley@gmail.com', 30000),
(10, 'Danny Boyle', 'danny@gmail.com', 50000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);
--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
--
--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;


