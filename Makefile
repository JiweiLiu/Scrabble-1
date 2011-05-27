C := gcc
CFLAGS += -O -Wall -Werror

test_extend:
	make test CFLAGS=-DEXTEND

test: testGame testTrie
	$(C) $(CFLAGS) -o runTests testAll.c testGame.o game.o testTrie.o trie.o

testGame: game
	$(C) $(CFLAGS) -c testGame.c

game:
	$(C) $(CFLAGS) -c game.c

testTrie: trie
	$(C) $(CFLAGS) -c testTrie.c

trie:
	$(C) $(CFLAGS) -c trie.c

clean:
	rm -rf *.o