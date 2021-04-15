Red [
    Title:  "Prime-sieve using `remove-each`"
	Author: "Galen Ivanov"
	Date:   15-04-2021
    Note:   "Slow, impractical for real use, serves only as a demonstration of `remove-each`"	
]

prime-sieve: function [
    "Finds the prime numbers less then or equal to n"
    n [integer!] "primes less than n" 
][
    primes: make block! n / log-e n
	append primes 2

    i: 1
    odd-n: collect/into [
	    while [n >= i: i + 2] [keep i]
	] make block! n / 2

	while [not empty? odd-n] [
	    append primes prime: take odd-n
		remove-each odd odd-n [zero? odd % prime]
	]
	primes
]

;test
;print prime-sieve 200


