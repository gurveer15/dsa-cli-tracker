CREATE DATABASE IF NOT EXISTS project1;
USE project1;
CREATE TABLE questions (
  id INT PRIMARY KEY,
  title VARCHAR(200),
  topic VARCHAR(50),
  description TEXT,
  difficulty VARCHAR(20),
  solvestatus VARCHAR(20)
);
INSERT INTO questions (id, title, topic,description, difficulty, solvestatus)
VALUES
(1, 'Two Sum', 'Arrays', 'Given an array of integers, return the indices of the two numbers that add up to a specific target.', 'Easy', 'Unsolved'),
(2, 'Kadane\'s Algorithm', 'Arrays', 'Find the maximum sum of a subarray within a given array. The subarray can be of any size.', 'Medium', 'Unsolved'),
(3, 'Merge Intervals', 'Arrays', 'Merge all overlapping intervals in a given array of intervals.', 'Medium', 'Unsolved'),
(4, 'Maximum Subarray Sum', 'Arrays', 'Find the sum of the maximum subarray in an array using Kadane\'s Algorithm.', 'Medium', 'Unsolved'),
(5, 'Next Permutation', 'Arrays', 'Find the next lexicographically greater permutation of numbers in a given array.', 'Medium', 'Unsolved'),
(6, 'Trapping Rain Water', 'Arrays', 'Calculate the amount of water that can be trapped between bars in a given array representing elevation.', 'Hard', 'Unsolved'),
(7, 'Valid Anagram', 'Strings', 'Check if two strings are anagrams of each other.', 'Easy', 'Unsolved'),
(8, 'Longest Common Prefix', 'Strings', 'Find the longest common prefix string amongst an array of strings.', 'Easy', 'Unsolved'),
(9, 'Longest Substring Without Repeating', 'Strings', 'Find the length of the longest substring without repeating characters in a given string.', 'Medium', 'Unsolved'),
(10, 'Group Anagrams', 'Strings', 'Group anagrams from a list of strings.', 'Medium', 'Unsolved'),
(11, 'Roman to Integer', 'Strings', 'Convert a Roman numeral to an integer.', 'Easy', 'Unsolved'),
(12, 'Longest Palindromic Substring', 'Strings', 'Find the longest palindromic substring in a given string.', 'Medium', 'Unsolved'),
(13, 'Subsets', 'Backtracking', 'Return all possible subsets (the power set) of a given set of numbers.', 'Medium', 'Unsolved'),
(14, 'Permutations', 'Backtracking', 'Find all possible permutations of a given list of numbers.', 'Medium', 'Unsolved'),
(15, 'N-Queens Problem', 'Backtracking', 'Solve the N-Queens problem using backtracking.', 'Hard', 'Unsolved'),
(16, 'Rat in a Maze', 'Backtracking', 'Find a path from the top-left to the bottom-right of a maze, avoiding obstacles.', 'Medium', 'Unsolved'),
(17, 'Sudoku Solver', 'Backtracking', 'Solve a Sudoku puzzle using backtracking.', 'Hard', 'Unsolved'),
(18, 'Generate Parentheses', 'Backtracking', 'Generate all valid combinations of parentheses.', 'Medium', 'Unsolved'),
(19, 'Binary Search', 'Searching', 'Perform binary search to find the index of a target element in a sorted array.', 'Easy', 'Unsolved'),
(20, 'Merge Sort', 'Sorting', 'Sort an array using merge sort algorithm.', 'Medium', 'Unsolved'),
(21, 'Quick Sort', 'Sorting', 'Sort an array using quick sort algorithm.', 'Medium', 'Unsolved'),
(22, 'Search in Rotated Sorted Array', 'Searching', 'Search for a target value in a rotated sorted array.', 'Medium', 'Unsolved'),
(23, 'Kth Largest Element', 'Sorting', 'Find the Kth largest element in an unsorted array.', 'Medium', 'Unsolved'),
(24, 'Reverse a Linked List', 'LinkedList', 'Reverse a singly linked list.', 'Easy', 'Unsolved'),
(25, 'Detect Cycle in Linked List', 'LinkedList', 'Detect if a cycle exists in a linked list.', 'Easy', 'Unsolved'),
(26, 'Merge Two Sorted Lists', 'LinkedList', 'Merge two sorted linked lists into one sorted list.', 'Easy', 'Unsolved'),
(27, 'Add Two Numbers', 'LinkedList', 'Add two numbers represented by linked lists.', 'Medium', 'Unsolved'),
(28, 'LRU Cache', 'LinkedList', 'Implement an LRU (Least Recently Used) cache using linked list.', 'Hard', 'Unsolved'),
(29, 'Inorder Traversal', 'Trees', 'Perform an in-order traversal of a binary tree.', 'Easy', 'Unsolved'),
(30, 'Level Order Traversal', 'Trees', 'Perform a level-order traversal (breadth-first) of a binary tree.', 'Medium', 'Unsolved'),
(31, 'Lowest Common Ancestor', 'Trees', 'Find the lowest common ancestor of two nodes in a binary tree.', 'Medium', 'Unsolved'),
(32, 'Serialize and Deserialize Tree', 'Trees', 'Serialize and deserialize a binary tree to/from a string.', 'Hard', 'Unsolved'),
(33, 'Binary Tree Maximum Path Sum', 'Trees', 'Find the maximum path sum between any two nodes in a binary tree.', 'Hard', 'Unsolved'),
(34, 'Climbing Stairs', 'DP', 'Climb a staircase where each step can be either 1 or 2 steps.', 'Easy', 'Unsolved'),
(35, 'House Robber', 'DP', 'Solve the house robber problem, where you can rob non-adjacent houses to maximize the amount of money.', 'Medium', 'Unsolved'),
(36, 'Coin Change', 'DP', 'Find the minimum number of coins needed to make change for a given amount.', 'Medium', 'Unsolved'),
(37, 'Longest Increasing Subsequence', 'DP', 'Find the longest increasing subsequence in a given array of numbers.', 'Medium', 'Unsolved'),
(38, 'Edit Distance', 'DP', 'Find the minimum number of operations required to convert one string to another using dynamic programming.', 'Hard', 'Unsolved'),
(39, 'Find the Duplicate Number', 'Arrays', 'Find the duplicate number in an array containing n + 1 integers.', 'Medium', 'Unsolved'),
(40, 'Find All Anagrams in a String', 'Strings', 'Find all anagrams in a string using a sliding window approach.', 'Medium', 'Unsolved'),
(41, 'Find Peak Element', 'Arrays', 'Find a peak element in an array. An element is a peak if it is greater than or equal to its neighbors.', 'Medium', 'Unsolved'),
(42, 'Searching in an Infinite Array', 'Searching', 'Given a sorted array that may be infinite, find the element in the array using binary search.', 'Hard', 'Unsolved'),
(43, 'Subarray Sum Equals K', 'Arrays', 'Given an array of integers, find the total number of continuous subarrays whose sum equals to a given integer k.', 'Medium', 'Unsolved'),
(44, 'First Missing Positive', 'Arrays', 'Find the first missing positive integer in an unsorted array.', 'Hard', 'Unsolved'),
(45, 'Kth Smallest Element in a Sorted Matrix', 'Arrays', 'Find the Kth smallest element in a sorted 2D matrix where each row and each column is sorted in ascending order.', 'Hard', 'Unsolved'),
(46, 'Spiral Matrix', 'Arrays', 'Given an m x n matrix, return all the elements of the matrix in spiral order.', 'Medium', 'Unsolved'),
(47, 'Find the Majority Element', 'Arrays', 'Find the element that appears more than n/2 times in an array (Majority element problem).', 'Easy', 'Unsolved'),
(48, 'Word Search', 'Backtracking', 'Given a 2D board and a word, check if the word exists in the grid using backtracking.', 'Medium', 'Unsolved'),
(49, 'Combination Sum', 'Backtracking', 'Find all unique combinations in a list of candidates where the candidate numbers sum to a target value.', 'Medium', 'Unsolved'),
(50, 'Partition Equal Subset Sum', 'DP', 'Given a set of positive numbers, partition the set into two subsets such that the sum of the elements in both subsets is the same.', 'Hard', 'Unsolved');

SELECT * FROM questions;

ALTER TABLE questions
MODIFY COLUMN id INT NOT NULL AUTO_INCREMENT;

SELECT * FROM questions WHERE solvestatus = 'Unsolved' AND difficulty = 'Easy';

SELECT  solvestatus FROM questions;
SELECT difficulty, solvestatus FROM questions WHERE LOWER(difficulty) = 'easy' AND LOWER(solvestatus) = 'unsolved';

